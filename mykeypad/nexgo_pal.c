/********************************Copyright ( c ) ********************************
**                  Shenzhen Xinguodu Technology Co., LTD.
** 						http://www.xinguodu.com
**                        
**
**Created By:		pengxuebin
** Created Date:	2015-11-2
** Version:		
** Description:	���ļ�����IO�����롢���á����롢������ͷŵȹܽ���صĺ����ض��壬
                ͳһ�ڲ�IO�ĵ��á����ýӿڣ����ڲ�ͬ���͵�IO�ڵ��䡣
  
****************************************************************************/
#include <linux/completion.h>//
#include <linux/platform_device.h>//
#include <linux/kernel.h>//
#include <linux/init.h>//
#include <linux/interrupt.h>//
#include <linux/io.h>//
#include <linux/module.h>//
#include <linux/spinlock.h>//
#include <linux/delay.h>//
#include <linux/types.h>//
#include <linux/clk.h>//
#include <linux/err.h>//
#include <linux/gpio.h>//
#include <mach/hardware.h>//
#include <mach/irqs.h>

#include <nexgo/bcm5830x_pins.h>
#include <nexgo/nexgo_pal.h>
#define PAL_DEBUG printk
/****************************************************************************
**Description:	    �ܽŹ�����������
**Input parameters:	
**Output parameters: 
**Returned value:
                    0:�ɹ�
                    -EIO:   �����IO��
**Created by:		��ѧ��20151104
**----------------------------------------------------------------------------------------------------------------
** Modified by:		XXX (2011-04-17): �޸�ԭ��
****************************************************************************/
s32 drv_pal_request_iomux(iomux_pin_name_t pin, iomux_pin_cfg_t cfg)
{
    s32 i;
    s32 ret;
    ret = iomux_config_mux(pin, cfg);

    i = IOMUX_TO_GPIO(pin);
    if(i<BCM_GPIO_NO_MAX)
    {
        ret |= gpio_request(i, NULL);
        //ret |= iproc_gpio_cfgpin(i, IPROC_GPIO_GENERAL);
    }
    if(ret == 0)
    {
        return 0;
    }
    else
    {
        return -EIO;
    }
}
EXPORT_SYMBOL(drv_pal_request_iomux);
/****************************************************************************
**Description:	    �ܽŹ��������ͷ�
**Input parameters:	
**Output parameters: 
**Returned value:
                    0:�ɹ�
                    -EIO:   �����IO��
**Created by:		��ѧ��201501104
**----------------------------------------------------------------------------------------------------------------
** Modified by:		XXX (2011-04-17): �޸�ԭ��
****************************************************************************/
s32 drv_pal_free_iomux(iomux_pin_name_t pin, iomux_pin_cfg_t cfg)
{
    s32 i;
    
    i = IOMUX_TO_GPIO(pin);
    if(i<BCM_GPIO_NO_MAX)
    {
        gpio_free(i);
    }
    return 0;
}
EXPORT_SYMBOL(drv_pal_free_iomux);
/****************************************************************************
**Description:	    �ܽ���������
**Input parameters:	
**Output parameters: 
**Returned value:
                    0:�ɹ�
**					-1: ʧ��
**Created by:		��ѧ��201501105
**----------------------------------------------------------------------------------------------------------------
** Modified by:		XXX (2011-04-17): �޸�ԭ��
****************************************************************************/
s32 drv_pal_gpio_set_pad(iomux_pin_name_t pin, u32 config)
{
    s32 ret;
    
    ret = iomux_gpio_set_pad(pin, config);
    if(ret<0)
    {
        return -EIO;      //������
    }
    else
    {
        return 0;
    }
}
EXPORT_SYMBOL(drv_pal_gpio_set_pad);
#if 0
/****************************************************************************
**Description:	    ����IO��Դ
**Input parameters:	
**Output parameters: 
**Returned value:
                    0:�ɹ�
**					-EBUSY: ��Դæ
                    -EIO:   �����IO��
**Created by:		��ѧ��20151104
**----------------------------------------------------------------------------------------------------------------
** Modified by:		XXX (2011-04-17): �޸�ԭ��
****************************************************************************/
s32 drv_pal_gpio_request(iomux_pin_name_t pin, const s8 *label)
{
    return gpio_request(IOMUX_TO_GPIO(pin), label);
}
EXPORT_SYMBOL(drv_pal_gpio_request);
/****************************************************************************
**Description:	    �ͷ�IO��Դ
**Input parameters:	
**Output parameters: 
**Returned value:
                    0:�ɹ�
                    -EIO:   �����IO��
**Created by:		��ѧ��20151104
**----------------------------------------------------------------------------------------------------------------
** Modified by:		XXX (2011-04-17): �޸�ԭ��
****************************************************************************/
s32 drv_pal_gpio_free(iomux_pin_name_t pin)
{
    gpio_free(IOMUX_TO_GPIO(pin));
    return 0;
}
EXPORT_SYMBOL(drv_pal_gpio_free);
#endif
/****************************************************************************
**Description:	    GPIO�����ó����
**Input parameters:	
**Output parameters: 
**Returned value:
                    0:�ɹ�
                    -EIO:   �����IO��
**Created by:		��ѧ��20151104
**----------------------------------------------------------------------------------------------------------------
** Modified by:		XXX (2011-04-17): �޸�ԭ��
****************************************************************************/
s32 drv_pal_gpio_direction_output(iomux_pin_name_t pin, u32 value)
{
    s32 i;
    
    i = IOMUX_TO_GPIO(pin);
    if(i<BCM_GPIO_NO_MAX)
    {
        return gpio_direction_output(i, value);
    }
    else
    {
        return -EIO;
    }
}
EXPORT_SYMBOL(drv_pal_gpio_direction_output);
/****************************************************************************
**Description:	    GPIO�����ó�����
**Input parameters:	
**Output parameters: 
**Returned value:
                    0:�ɹ�
                    -EIO:   �����IO��
**Created by:		��ѧ��20151104
**----------------------------------------------------------------------------------------------------------------
** Modified by:		XXX (2011-04-17): �޸�ԭ��
****************************************************************************/
s32 drv_pal_gpio_direction_input(iomux_pin_name_t pin)
{
    s32 i;
    
    i = IOMUX_TO_GPIO(pin);
    if(i<BCM_GPIO_NO_MAX)
    {
        return gpio_direction_input(i);
    }
    else
    {
        return -EIO;
    }
}
EXPORT_SYMBOL(drv_pal_gpio_direction_input);
/****************************************************************************
**Description:	    ��ȡGPIO�ڵ�ƽ
**Input parameters:	
**Output parameters: 
**Returned value:
                    0:�ɹ�
                    -EIO:   �����IO��
**Created by:		��ѧ��20151104
**----------------------------------------------------------------------------------------------------------------
** Modified by:		XXX (2011-04-17): �޸�ԭ��
****************************************************************************/
s32 drv_pal_gpio_get_value(iomux_pin_name_t pin)
{
    s32 i;
    
    i = IOMUX_TO_GPIO(pin);
    if(i<BCM_GPIO_NO_MAX)
    {
        return gpio_get_value(i);
    }
    else
    {
        return -EIO;      //������
    }
}
EXPORT_SYMBOL(drv_pal_gpio_get_value);
/****************************************************************************
**Description:	    ����GPIO�ڵ�ƽ
**Input parameters:	
**Output parameters: 
**Returned value:
                    0:�ɹ�
                    -EIO:   �����IO��
**Created by:		��ѧ��20151103
**----------------------------------------------------------------------------------------------------------------
** Modified by:		XXX (2011-04-17): �޸�ԭ��
****************************************************************************/
s32 drv_pal_gpio_set_value(iomux_pin_name_t pin, u32 value)
{
    s32 i;
    
    i = IOMUX_TO_GPIO(pin);
    if(i<BCM_GPIO_NO_MAX)
    {
        gpio_set_value(i, value);
        return 0;
    }
    else
    {
        return -EIO;      //������
    }
}
EXPORT_SYMBOL(drv_pal_gpio_set_value);
/****************************************************************************
**Description:	    ����GPIO�ڵ�ƽ
**Input parameters:	
**Output parameters: 
**Returned value:
                    0:�ɹ�
                    -EIO:  �����IO�ڹ���
**Created by:		��ѧ��201501103
**----------------------------------------------------------------------------------------------------------------
** Modified by:		XXX (2011-04-17): �޸�ԭ��
****************************************************************************/
s32 drv_pal_gpio_to_irq(iomux_pin_name_t pin)
{
    s32 i;
    
    i = IOMUX_TO_GPIO(pin);
    if(i<BCM_GPIO_NO_MAX)
    {
        return gpio_to_irq(i);
    }
    else
    {
        return -EIO;      //������
    }
}
EXPORT_SYMBOL(drv_pal_gpio_to_irq);

// static int __init nexgo_io(void)
// {
//     printk("start my GPIO\n");
//     return 0;
// }

// static void __exit nexgo_io_exit(void)
// {
//     printk("exit my GPIO\n");
// }
// module_init(nexgo_io);
// module_exit(nexgo_io_exit);
// MODULE_LICENSE("GPL");
