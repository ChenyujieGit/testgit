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
    struct work_struct my_wq;
};
//暂定为全局
struct input_dev *input_dev;
struct work_struct *work1;

static int get_row(struct platform_data *pdata)
{
    int i,err;
    //const struct platform_data *pdata=pdev->pdata;
    //GPIO初始化
    for(i=0;i<6;i++)//管脚功能释放
    {
        if(i<4)
        {
           
            //设定列GPIO为输入模式
            if(drv_pal_gpio_direction_input(pdata->T5_col_pin_cfg[i].pin))
            {
                printk("set col GPIO %d input fail\n",i);
                // goto setpad;
            }
            //设定行GPIO为输出模式
            if(drv_pal_gpio_direction_input(pdata->T5_row_pin_cfg[i].pin))
            {
                printk("set row GPIO %d input fail\n",i);
                // goto setpad;
            }

        }else
        {
            //设定列GPIO为输出模式
            if(drv_pal_gpio_direction_input(pdata->T5_col_pin_cfg[i].pin))
            {
                printk("set col GPIO %d output fail\n",i);
                // goto setpad;
            }
        }
    }
        for(i=0;i<4;i++)
        {
            err=drv_pal_gpio_get_value(pdata->T5_row_pin_cfg[i].pin);
            if(!err)
            {
                printk("get row is %d\n",i);
               return i;
            }
        }      
    
     return i;
}

static int get_col(struct platform_data *pdata)
{
    int i,err;
    
    //GPIO初始化
    //printk("GPIO %d\n",pdata->T5_row_pin_cfg[1].pad_cfg);
    for(i=0;i<6;i++)//管脚功能释放
    {
        if(i<4)
        {
            // //设定列GPIO为输入模式
            if(drv_pal_gpio_direction_input(pdata->T5_col_pin_cfg[i].pin))
            {
                printk("set col GPIO %d input fail\n",i);
                //goto setpad;
            }
            //设定行GPIO为输出模式
            if(drv_pal_gpio_direction_output(pdata->T5_row_pin_cfg[i].pin,1))
            {
                printk("set row GPIO %d input fail\n",i);
                // goto setpad;
            }
            //drv_pal_gpio_set_value(pdata->T5_col_pin_cfg[i].pin,0);
            drv_pal_gpio_set_value(pdata->T5_row_pin_cfg[i].pin,1);
            printk("row GPIO %d value is %d\n",i,drv_pal_gpio_get_value(pdata->T5_row_pin_cfg[i].pin));

        }else
        {
            //设定列GPIO为输出模式
            if(drv_pal_gpio_direction_input(pdata->T5_col_pin_cfg[i].pin))
            {
                printk("set col GPIO %d output fail\n",i);
                //goto setpad;
            }
        }
    }
        for(i=0;i<4;i++)
        {
            err=drv_pal_gpio_get_value(pdata->T5_col_pin_cfg[i].pin);
            printk("row gpio val is %d\n",err);
            if(err)
            {
                printk("get col is %d\n",i);
                return i;
            }
        }      
    
    return i;
}

static int get_value(int i,int j)
{
    if(i==1)
    {
        if(j==1)
        {
            return KEY_8;
        }else if(j==2)
        {
            return KEY_5;
        }else if(j==3)
        {
            return KEY_2;
        }
    }else if(i==2)
    {
        if(j==1)
        {
            return KEY_7;
        }else if(j==2)
        {
            return KEY_4;
        }else if(j==3)
        {
            return KEY_1;
        }
    }else if(i==3)
    {
        if(j==1)
        {
            return KEY_6;
        }else if(j==2)
        {
            return KEY_3;
        }else if(j==3)
        {
            return KEY_ESC;
        }
    }
return -1;
}

//中断下半部
void my_wq_fun(struct work_struct *work)
{
    int i,j,err;
    struct mykeypad *mykeypad = container_of(work,struct mykeypad ,my_wq);
    struct platform_data *pdata=mykeypad->pdata;
     i=get_row(pdata);
     j=get_col(pdata);
     err=get_value(i,j);
     printk("err is %d\n",err);
    for(i=1;i<4;i++)
    {
        enable_irq(drv_pal_gpio_to_irq(mykeypad->pdata->T5_row_pin_cfg[i].pin));
        enable_irq(drv_pal_gpio_to_irq(mykeypad->pdata->T5_row_pin_cfg[i].pin));
    }
    printk("err111 is %d\n",err);
    input_report_key(mykeypad->input_dev,err,1);
    input_sync(mykeypad->input_dev);//printk("input_sync\n");
    printk("err222 is %d\n",err);
    input_report_key(mykeypad->input_dev,err,0);
    input_sync(mykeypad->input_dev);//printk("input_sync\n");
    printk("err333 is %d\n",err);
}
//中断处理函数
static irqreturn_t mykeypad_interrupt(int irq ,void *id)
{
    struct mykeypad *mykeypad =(struct mykeypad *)id;
    int i;//,j,err;
    printk("start irq\n");
    printk("pdata pin %d\n",mykeypad->pdata->T5_row_pin_cfg[2].pad_cfg);//测试接收的device的数据
    //i=get_row(mykeypad);
    // printk("111\n");
    //j=get_col(mykeypad);
    // printk("222\n");
    //err=get_value(i,j);
    //printk("event value %d\n",err);
    for(i=1;i<4;i++)
    {
        disable_irq_nosync(drv_pal_gpio_to_irq(mykeypad->pdata->T5_row_pin_cfg[i].pin));
        disable_irq_nosync(drv_pal_gpio_to_irq(mykeypad->pdata->T5_row_pin_cfg[i].pin));
    }
    schedule_work(work1);
    //printk("input_report_key\n");
    //printk("input_report_key\n"); 
    return IRQ_HANDLED;
}

//获取矩阵键盘按下的方位信息
static int __devinit platform_driver_test_probe(struct platform_device *pdev)
{
    int err,i;
    struct mykeypad *mykeypad;
    mykeypad = kzalloc(sizeof(struct mykeypad) ,
			 GFP_KERNEL);
    mykeypad->pdata=pdev->dev.platform_data;
    work1=&mykeypad->my_wq;
    //struct input_dev *input_dev=&dev;
    
    
    printk("start probe\n");
    
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
    input_set_capability(input_dev,EV_KEY,KEY_1);
    input_set_capability(input_dev,EV_KEY,KEY_2);
    input_set_capability(input_dev,EV_KEY,KEY_3);
    input_set_capability(input_dev,EV_KEY,KEY_4);
    input_set_capability(input_dev,EV_KEY,KEY_5);
    input_set_capability(input_dev,EV_KEY,KEY_6);
    input_set_capability(input_dev,EV_KEY,KEY_7);
    input_set_capability(input_dev,EV_KEY,KEY_8);


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
    //通过GPIO号申请中断号并申请对应的中断
    for(i=0;i<6;i++)
    {
        if(i<3)
        {
            err=request_irq(drv_pal_gpio_to_irq(mykeypad->pdata->T5_row_pin_cfg[i+1].pin),
					mykeypad_interrupt,
					IRQF_TRIGGER_RISING |
					IRQF_TRIGGER_FALLING,
					"platform_device_test", mykeypad);
            if(err)
            {
                printk("request irp failed\n");
                goto free_input_dev;
            }
            printk("request irq succese %d\n",i);
        }else
        {
            err=request_irq(drv_pal_gpio_to_irq(mykeypad->pdata->T5_col_pin_cfg[i-2].pin),
					mykeypad_interrupt,
					IRQF_TRIGGER_RISING |
					IRQF_TRIGGER_FALLING,
					"platform_device_test", mykeypad);
            if(err)
            {
                printk("request irp failed\n");
                goto free_input_dev;
            }
            printk("request irq succese %d\n",i);
        }
    }

    INIT_WORK(&mykeypad->my_wq,my_wq_fun);
    
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
    struct mykeypad *mykeypad;
    mykeypad = kzalloc(sizeof(struct mykeypad) ,
			 GFP_KERNEL);
    mykeypad->pdata=pdev->dev.platform_data;
    //struct input_dev *input_dev=&dev;
    
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
    for(i=0;i<10;i++)
    {
        if(i<6)
        {
            free_irq(gpio_to_irq(mykeypad->pdata->T5_col_pin_cfg[i].pin),mykeypad);
        }else
        {
            free_irq(gpio_to_irq(mykeypad->pdata->T5_row_pin_cfg[i-6].pin),mykeypad);
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
    printk("test 匹配\n");
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