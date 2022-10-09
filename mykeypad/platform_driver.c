#include <linux/types.h>
#include <linux/delay.h>
#include <linux/platform_device.h>
#include <linux/init.h>
#include <linux/input.h>
#include <linux/irq.h>
#include <linux/interrupt.h>
#include <linux/jiffies.h>
#include <linux/module.h>
#include <linux/gpio.h>
#include <linux/input/matrix_keypad.h>
#include <linux/slab.h>
#include <linux/spinlock.h>
#include <linux/timer.h>
#include <linux/pm.h>
#include <linux/pm_runtime.h>
#include <linux/workqueue.h>
#include <linux/kernel.h>
#include <linux/errno.h>
#include <nexgo/bcm5830x_pins.h>
#include <linux/completion.h>
#include <linux/io.h>
#include <linux/clk.h>
#include <linux/err.h>
#include <mach/hardware.h>
#include <mach/irqs.h>
#include <nexgo/nexgo_pal.h>

typedef struct T2_col_pin_cfg
{
    iomux_pin_name_t pin;
    iomux_pin_cfg_t pin_cfg;
    iomux_pad_config_t pad_cfg;
}keypad_pin_cfg_t;

struct platform_data
{
    keypad_pin_cfg_t T5_col_pin_cfg[6];
    keypad_pin_cfg_t T5_row_pin_cfg[4];
};

struct mykeypad
{
    struct input_dev *input_dev;
    struct platform_data *pdata;
    struct delayed_work my_wq;
    int new_state;
    int old_state;
    bool star_irq;
    int last_key;
    int other_key;
};

int KEY_ARR[6][4]={
{KEY_ENTER,KEY_DOWN,KEY_0,KEY_UP},
{KEY_DELETE,KEY_9,KEY_8,KEY_7},
{KEY_ESC,KEY_6,KEY_5,KEY_4},
{-1,KEY_3,KEY_2,KEY_1},
{KEY_F,KEY_F3,KEY_F2,KEY_F1},
{KEY_POWER,-1,-1,-1}};

//暂定为全局
struct input_dev *input_dev;
struct delayed_work *work1;
int count=0;//匹配计数

static void reset_gpio(struct platform_data *pdata)
{
    int i;
    for(i=0;i<6;i++)
    {
         //设定列GPIO为输入模式
        if(drv_pal_gpio_direction_input(pdata->T5_col_pin_cfg[i].pin))
        {
            printk("set col GPIO %d input fail\n",i);
            //goto setpad;
        }
    }
    for(i=0;i<4;i++)
    {
        //设定行GPIO为输出模式
        if(drv_pal_gpio_direction_output(pdata->T5_row_pin_cfg[i].pin,1))
        {
            printk("set col GPIO %d input fail\n",i);
            //goto setpad;
        }
        drv_pal_gpio_set_value(pdata->T5_row_pin_cfg[i].pin,1);
    }
    
}
static int my_key_scan(struct platform_data *pdata)
{
    int i,j,err;
    //struct mykeypad *mykeypad = container_of(work1,struct mykeypad ,my_wq);//通过函数获得device信息
    for(i=0;i<4;i++)
    {
        drv_pal_gpio_set_value(pdata->T5_row_pin_cfg[i].pin,0);
    }

    for(i=0;i<4;i++)
    {
        drv_pal_gpio_set_value(pdata->T5_row_pin_cfg[i].pin,1);
        // printk("row GPIO%d is %d\n",i,drv_pal_gpio_get_value(pdata->T5_row_pin_cfg[i].pin));
        for(j=0;j<5;j++)
        {
            err=drv_pal_gpio_get_value(pdata->T5_col_pin_cfg[j].pin);
            // printk("col GPIO%d is %d\n",j,err);
            if(err)
            {
                return KEY_ARR[j][i];
            }
        }
    } 
    err=drv_pal_gpio_get_value(pdata->T5_col_pin_cfg[j].pin);
    if(err==0){return KEY_ARR[j][0];} 
return -1;
}

static int scanf_other(struct platform_data *pdata,int col,int row)
{
    int i,j,err;
    reset_gpio(pdata);
    for(i=0;i<4;i++)
    {
        drv_pal_gpio_set_value(pdata->T5_row_pin_cfg[i].pin,0);
    }
    for(i=0;i<4;i++)
    {
        drv_pal_gpio_set_value(pdata->T5_row_pin_cfg[i].pin,1);
        // printk("row GPIO%d is %d\n",i,drv_pal_gpio_get_value(pdata->T5_row_pin_cfg[i].pin));
        for(j=0;j<5;j++)
        {   
            
            err=drv_pal_gpio_get_value(pdata->T5_col_pin_cfg[j].pin);
            // printk("col GPIO%d is %d\n",j,err);
            if(err )
            {
                if((KEY_ARR[j][i] == KEY_ARR[col][row]))
                {
                    drv_pal_gpio_set_value(pdata->T5_row_pin_cfg[i].pin,0);
                }else
                {
                    // printk(" col =%d , row =%d\n",col,row);
                    // printk("out i = %d j = %d\n",i,j);
                    return KEY_ARR[j][i];  
                }
                
            } 
        }
    }
    err=drv_pal_gpio_get_value(pdata->T5_col_pin_cfg[5].pin);//开关管脚的电平
    if(err==0 && KEY_ARR[j][0] != KEY_ARR[col][0] )
    {
        //printk("out i = %d j = %d\n",i,j);
        return KEY_ARR[j][0];
    }
return -1;
}
//中断下半部
static void my_wq_fun(struct work_struct *work)
{
    int err,i,j;
    int col=-1,row=-1;
    struct mykeypad *mykeypad = container_of(work1,struct mykeypad ,my_wq);//通过函数获得device信息
    struct platform_data *pdata=mykeypad->pdata;
    err=my_key_scan(pdata);
    if(err !=-1)
    {
        for(i=0;i<4;i++)
            {
                for(j=0;j<6;j++)
                {
                    if(err !=-1 && err == KEY_ARR[j][i])
                    {
                        col=j;
                        row=i;
                        break;
                    }
                }
                if(col >=0 )
                {
                    break;
                }
            }
    }else
    {
        col =-1;
        row =-1;
    }
    
    //printk("mykeypad->last_key = %d, err = %d\n",mykeypad->last_key,err);
    if(mykeypad->last_key >= 0)//上报过事件
    {
        //printk("out\n");
        // printk("last KEY %d\n,other_KEY %d\n",mykeypad->last_key,mykeypad->other_key);
        
        mykeypad->new_state=err;
        if(err != -1 && count <=200 )//多次短延时检测数据，全部符合则确认为长按
        {
            //printk("out delay 111\n");
            schedule_delayed_work(&mykeypad->my_wq,msecs_to_jiffies(10)); //在获取一次状态确定是弹起还是长按
        } 
        //}     
        if(mykeypad->new_state == mykeypad->old_state )//确认长按的处理，状态符合则进行计数
        {
            err=scanf_other(mykeypad->pdata,col,row);
            if(err !=-1  && mykeypad->other_key ==-1)//长按中其他键被按下
            {
                mykeypad->other_key=err;
                input_event(mykeypad->input_dev,EV_KEY,mykeypad->other_key,1);
                input_sync(mykeypad->input_dev);//printk("input_sync\n");

            }else if(err != -1 && err != mykeypad->other_key)//又有其他的键被按下
            {
                input_event(mykeypad->input_dev,EV_KEY,mykeypad->other_key,0);
                input_sync(mykeypad->input_dev);//printk("input_sync\n");
                mykeypad->other_key=err;
                input_event(mykeypad->input_dev,EV_KEY,mykeypad->other_key,1);
                input_sync(mykeypad->input_dev);//printk("input_sync\n");
            }else if(err==-1)//无其他键被按下
            {
                input_event(mykeypad->input_dev,EV_KEY,mykeypad->other_key,0);
                input_sync(mykeypad->input_dev);//printk("input_sync\n");
                mykeypad->other_key=err;
            }

            if(count > 200 && mykeypad->new_state!=-1 && err != -1)//多次扫描确认是否为长按（两个键都是长按）
            {
                //printk("长按匹配\n");
                input_event(mykeypad->input_dev,EV_KEY,mykeypad->new_state,2);
                input_sync(mykeypad->input_dev);//printk("input_sync\n");
                input_event(mykeypad->input_dev,EV_KEY,mykeypad->other_key,2);
                input_sync(mykeypad->input_dev);//printk("input_sync\n");
                //printk("long delay 111\n");
                schedule_delayed_work(&mykeypad->my_wq,msecs_to_jiffies(100)); //在获取一次状态确定是弹起还是长按
            }else if(count > 200 &&  mykeypad->new_state != -1)//是否第一个键被按下第二键已弹起
            {
                input_event(mykeypad->input_dev,EV_KEY,mykeypad->new_state,2);
                input_sync(mykeypad->input_dev);//printk("input_sync\n");
                //printk("long delay 222\n");
                schedule_delayed_work(&mykeypad->my_wq,msecs_to_jiffies(100)); //在获取一次状态确定是弹起还是长按
            }else if(count > 200 &&  err != -1 )//第一个键弹起但第二键还是被按下
            {
                input_event(mykeypad->input_dev,EV_KEY,mykeypad->other_key,2);
                input_sync(mykeypad->input_dev);//printk("input_sync\n");
                //printk("long delay 333\n");
                schedule_delayed_work(&mykeypad->my_wq,msecs_to_jiffies(100)); //在获取一次状态确定是弹起还是长按
            }  
            count++;
        }else //第一个键被弹起
        {
            //printk("out receive last\n");
            input_event(mykeypad->input_dev,EV_KEY,mykeypad->last_key,0);//回收按下的状态
            input_sync(mykeypad->input_dev);
            mykeypad->last_key=-1;
            if(mykeypad->other_key != -1)
            {
                mykeypad->last_key=mykeypad->other_key;//切换要上报的键值信息
                mykeypad->old_state=mykeypad->other_key;
                mykeypad->other_key=-1;
                schedule_delayed_work(&mykeypad->my_wq,msecs_to_jiffies(10));
            }else //没有按键被按下，重置标志和一些信息，使能中断
            {
                //printk("status reset\n");
                count=0;
                mykeypad->new_state=-1;
                mykeypad->old_state=-1;
                mykeypad->last_key=-1;
                for(i=0;i<6;i++)//使能中断
                {
                    //printk("enable\n");
                    enable_irq(drv_pal_gpio_to_irq(mykeypad->pdata->T5_col_pin_cfg[i].pin));
                }
            }
        }
           
    }else if(mykeypad->last_key == -1)//未上报过事件
    {
        if(mykeypad->old_state==-1 )//旧状态未被获取过
        {
            mykeypad->old_state=err;
        }else //新状态未被获取过
        {
            mykeypad->new_state=err;
           // printk("init delay 1.555\n");
            if((mykeypad->new_state != -1 )&&(mykeypad->old_state != -1 ) && 
            (mykeypad->old_state == mykeypad->new_state) &&
            mykeypad->last_key == -1 )
            {
                //printk("点按匹配成功\n");
                mykeypad->last_key = mykeypad->new_state;//存储上报键
                //printk("last KEY %d\n",mykeypad->last_key);
                input_event(mykeypad->input_dev,EV_KEY,mykeypad->new_state,1);
                input_sync(mykeypad->input_dev);//printk("input_sync\n");
                schedule_delayed_work(&mykeypad->my_wq,msecs_to_jiffies(10));  
            }
        }
        if(count < 3 )//检测3次，无正确状态则退出
        {
           // printk("init delay 111\n");
            count++;
            schedule_delayed_work(&mykeypad->my_wq,msecs_to_jiffies(10)); //等待延时后在获取新状态 
        }else
        {
            //printk("count out\n");
            for(i=0;i<6;i++)//使能中断
            {
                //printk("enable\n");
                enable_irq(drv_pal_gpio_to_irq(mykeypad->pdata->T5_col_pin_cfg[i].pin));
            }
            count=0;
            mykeypad->new_state=-1;
            mykeypad->old_state=-1;
        }
        
    }
    reset_gpio(pdata);
  
}

//中断处理函数
static irqreturn_t mykeypad_interrupt(int irq ,void *id)
{
    struct mykeypad *mykeypad =container_of(work1,struct mykeypad ,my_wq);
    int i;//,j,err;
    //printk("start mykeypad->star_irq %d\n",mykeypad->star_irq);//测试接收的device的数据
    if(irq == 268 && mykeypad->star_irq != true )//隔离申请就被触发的操作
    {
        mykeypad->star_irq =true;
        return IRQ_HANDLED;
    }else if( !mykeypad->star_irq )
    {
        return IRQ_HANDLED;
    }
    //printk("start irq %d\n",irq);//测试接收的device的数据
    for(i=0;i<6;i++)
    { 
       //printk("start disable irq = %d\n",drv_pal_gpio_to_irq(mykeypad->pdata->T5_col_pin_cfg[i].pin));
       disable_irq_nosync(drv_pal_gpio_to_irq(mykeypad->pdata->T5_col_pin_cfg[i].pin));
    }
    //printk("init delay 333\n");
    schedule_delayed_work(&mykeypad->my_wq,msecs_to_jiffies(20));

    return IRQ_HANDLED;
}

//获取矩阵键盘按下的方位信息
static int __devinit platform_driver_test_probe(struct platform_device *pdev)
{
    int err,i;
    struct mykeypad *mykeypad;
    mykeypad = kzalloc(sizeof(struct mykeypad) ,GFP_KERNEL);
    mykeypad->pdata=pdev->dev.platform_data;
    mykeypad->old_state=-1;
    mykeypad->new_state=-1;
    mykeypad->star_irq=false;
    mykeypad->last_key=-1;
    mykeypad->other_key=-1;
    work1=&mykeypad->my_wq;
    
    //printk("start probe\n");
    
    if (!mykeypad->pdata) 
    {
		//dev_err(&pdev->dev, "no platform data defined\n");
        printk("no platform data defined\n");
		return -EINVAL;
	}
    //printk("pdata pin %d\n",mykeypad->pdata->T5_col_pin_cfg[0].pin);//测试接收的device的数据

    input_dev = input_allocate_device();//申请一块地址注册设备
    mykeypad->input_dev=input_dev;
	if (mykeypad->input_dev==NULL) 
    {
		printk("create input device fail\n");
        return 0;
	}
    //INIT_DELAYED_WORK(&mykeypad->work,my_wq_fun);
    //设定事件上报的能力，目前设定键值为1~9
    input_set_capability(input_dev,EV_KEY,KEY_ESC);
    input_set_capability(input_dev,EV_KEY,KEY_0);
    input_set_capability(input_dev,EV_KEY,KEY_1);
    input_set_capability(input_dev,EV_KEY,KEY_2);
    input_set_capability(input_dev,EV_KEY,KEY_3);
    input_set_capability(input_dev,EV_KEY,KEY_4);
    input_set_capability(input_dev,EV_KEY,KEY_5);
    input_set_capability(input_dev,EV_KEY,KEY_6);
    input_set_capability(input_dev,EV_KEY,KEY_7);
    input_set_capability(input_dev,EV_KEY,KEY_8);
    input_set_capability(input_dev,EV_KEY,KEY_9);
    input_set_capability(input_dev,EV_KEY,KEY_ENTER);
    input_set_capability(input_dev,EV_KEY,KEY_POWER);
    input_set_capability(input_dev,EV_KEY,KEY_UP);
    input_set_capability(input_dev,EV_KEY,KEY_DOWN);
    input_set_capability(input_dev,EV_KEY,KEY_F);
    input_set_capability(input_dev,EV_KEY,KEY_F1);
    input_set_capability(input_dev,EV_KEY,KEY_F2);
    input_set_capability(input_dev,EV_KEY,KEY_F3);
    input_set_capability(input_dev,EV_KEY,KEY_DELETE);
    input_dev->name="platform_device_test";
    input_dev->phys="platform_device_test/input0";

    err = input_register_device(input_dev);
	if (err) {
		
        printk("input_register_device fail\n");
		goto free_input_dev;
	}
    //GPIO初始化
    for(i=0;i<6;i++)//管脚功能释放
    {
        if(i<4)
        {
            //申请列配置管脚
            err=drv_pal_request_iomux(mykeypad->pdata->T5_col_pin_cfg[i].pin,mykeypad->pdata->T5_col_pin_cfg[i].pin_cfg);
            if(err)printk("request col GPIO %d fail\n",i);

            //申请行配置管脚
            err=drv_pal_request_iomux(mykeypad->pdata->T5_row_pin_cfg[i].pin,mykeypad->pdata->T5_row_pin_cfg[i].pin_cfg);
            if(err)printk("request row GPIO %d fail\n",i);

            //列管脚属性配置
            err=drv_pal_gpio_set_pad(mykeypad->pdata->T5_col_pin_cfg[i].pin,mykeypad->pdata->T5_col_pin_cfg[i].pad_cfg);
            if(err)
            {
                printk("set col GPIO %d pad fail\n",i);
                //goto setpad;
            }
            //列管脚属性配置
            err=drv_pal_gpio_set_pad(mykeypad->pdata->T5_row_pin_cfg[i].pin,mykeypad->pdata->T5_row_pin_cfg[i].pad_cfg);
            if(err)
            {
                printk("set row GPIO %d pad fail\n",i);
                //goto setpad;
            }
        }else
        {
            //申请列配置管脚
            err=drv_pal_request_iomux(mykeypad->pdata->T5_col_pin_cfg[i].pin,mykeypad->pdata->T5_col_pin_cfg[i].pin_cfg);
            if(err)printk("request col GPIO fail\n");
            //列管脚属性配置
            err=drv_pal_gpio_set_pad(mykeypad->pdata->T5_col_pin_cfg[i].pin,mykeypad->pdata->T5_col_pin_cfg[i].pad_cfg);
            if(err)
            {
                printk("set col GPIO %d pad fail\n",i);
                //goto setpad;
            }
        }
    }
    
    printk("init GPIO succese\n");
    INIT_DELAYED_WORK(&mykeypad->my_wq,my_wq_fun);
    for(i=0;i<5;i++)
    {
            err=request_irq(drv_pal_gpio_to_irq(mykeypad->pdata->T5_col_pin_cfg[i].pin),
                mykeypad_interrupt,
                IRQF_TRIGGER_RISING ,
                "platform_device_test", mykeypad);
            if(err)
            {
                printk("request irp failed\n");
                goto free_input_dev;
            }
            printk("request irq succese %d\n",i);
    }
            err=request_irq(drv_pal_gpio_to_irq(mykeypad->pdata->T5_col_pin_cfg[i].pin),
                mykeypad_interrupt,
                IRQF_TRIGGER_LOW,
                "platform_device_test", mykeypad);
            if(err)
            {
                printk("request irp failed\n");
                goto free_input_dev;
            }
            printk("request irq succese %d\n",i);
    printk("init work\n");
    
    return 0;
   
free_input_dev:
    input_unregister_device(input_dev);
    input_free_device(input_dev);
    //input_dev=NULL;
    kfree(mykeypad);
    return 0;
}

static int __devexit platform_driver_test_remove(struct platform_device *pdev)
{
    int i=0,err,err1;
    struct mykeypad *mykeypad= container_of(work1,struct mykeypad ,my_wq);
    // mykeypad = kzalloc(sizeof(struct mykeypad) ,
	// 		 GFP_KERNEL);
    //mykeypad->pdata=pdev->dev.platform_data;
    //struct input_dev *input_dev=&dev;
    for(i=0;i<6;i++)
    {
        
        free_irq(gpio_to_irq(mykeypad->pdata->T5_col_pin_cfg[i].pin),mykeypad);
        
    }
    printk("start exit\n");
    printk("exit GPIO\n");
    for(i=0;i<6;i++)//管脚功能释放
    {
        if(i<4)
        {
            err1=drv_pal_free_iomux(mykeypad->pdata->T5_col_pin_cfg[i].pin,mykeypad->pdata->T5_col_pin_cfg[i].pin_cfg);
            err=drv_pal_free_iomux(mykeypad->pdata->T5_row_pin_cfg[i].pin,mykeypad->pdata->T5_row_pin_cfg[i].pin_cfg);
            if(err==0 && err1==0)printk("free GPIO OK\n");
        }else
        {
            err=drv_pal_free_iomux(mykeypad->pdata->T5_col_pin_cfg[i].pin,mykeypad->pdata->T5_col_pin_cfg[i].pin_cfg);
            if(err==0)printk("free GPIO OK\n");
        }
       
    }
    printk("input_unregister_device\n");
    input_unregister_device(input_dev);
    kfree(mykeypad);
    return 0;
}
//初始化驱动结构体信息
static struct platform_driver platform_driver_test = {
	.probe = platform_driver_test_probe,
	.remove = platform_driver_test_remove,
	.driver = {
		.name = "platform_device_test",
		.owner = THIS_MODULE,
	},
};

//驱动注册进内核
static int __init mytest_driver_init(void)
{
    printk("成功匹配设备\n");
	return platform_driver_register(&platform_driver_test);
}

static void __exit mytest_driver_exit(void)
{
	platform_driver_unregister(&platform_driver_test);
}

module_init(mytest_driver_init);
module_exit(mytest_driver_exit);
MODULE_DESCRIPTION("cyj Keypad driver test");
MODULE_ALIAS("platform:platform_device_test");
MODULE_LICENSE("GPL v2");