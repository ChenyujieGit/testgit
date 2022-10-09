/********************************Copyright ( c ) ********************************
**                  Shenzhen Xinguodu Technology Co., LTD.
** 						http://www.xinguodu.com
**                        
**
**Created By:		pengxuebin
** Created Date:	2015-11-2
** Version:		
** Description:	
  
****************************************************************************/
#include <linux/completion.h>
#include <linux/platform_device.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/interrupt.h>
#include <linux/io.h>
#include <linux/module.h>
#include <linux/spinlock.h>
#include <linux/delay.h>
#include <linux/types.h>
#include <linux/clk.h>
#include <linux/err.h>
#include <linux/gpio.h>
#include <mach/hardware.h>
#include <mach/irqs.h>
#include <mach/socregs_cygnus_b0.h>

#include <nexgo/bcm5830x_pins.h>
#include <nexgo/nexgo_pal.h>

#define PAL_DEBUG printk
//
#if 0
#define CRMU_IOMUX_CTRL0_BASE 0x0c8
#define SMART_CARD_FCB_SEL_BASE 0x0e8
#define GPIO_3P3_IOMUX_SEL_BASE 0x0f0
#define CRMU_IOMUX_CTRL8_BASE 0x24c

#define IOMUX_TO_TYPE(pin)      ((pin>>BCM_GPIO_TYPE)&((1<<BCM_GPIO_TYPE_nb)-1))
#define IOMUX_TO_PAD_R(pin)     ((pin>>BCM_GPIO_PAD_R)&((1<<BCM_GPIO_PAD_R_nb)-1))
#define IOMUX_TO_PAD_RG(pin)    ((pin>>BCM_GPIO_PAD_RG)&((1<<BCM_GPIO_PAD_RG_nb)-1))
#define IOMUX_TO_MODULE_R(pin)  ((pin>>BCM_GPIO_MODULE_R)&((1<<BCM_GPIO_MODULE_R_nb)-1))
#define IOMUX_TO_MODULE_RG(pin) ((pin>>BCM_GPIO_MODULE_RG)&((1<<BCM_GPIO_MODULE_RG_nb)-1))
#define IOMUX_TO_GPIO(pin)      ((pin>>BCM_GPIO_NO)&((1<<_GPIO_NO_nb)-1))

#endif
// ( afx 20151119) pengxuebin 调整GPIO属性定义位置，
#define PAD_CTL_DRV_STRENGTH_MASK   0x07
#define PAD_CTL_DRV_STRENGTH_B0     (1<<0)
#define PAD_CTL_DRV_STRENGTH_B1     (1<<1)
#define PAD_CTL_DRV_STRENGTH_B2     (1<<2)
#define PAD_CTL_PULL_MASK           (3<<3)
//(afx gpio pengxuebin 20160127)修改上下拉定义
#define PAD_CTL_PULL_UP_MASK        (1<<3)
#define PAD_CTL_PULL_DOWN_MASK      (1<<4)
#define PAD_CTL_HYST_MASK           (1<<5)
#define PAD_CTL_SLEW_MASK           (1<<6)

#define ASIU_GPIO_REGIDX(asiu_pin) ((asiu_pin) / 32)
#define ASIU_GPIO_REGBIT(asiu_pin) ((asiu_pin) % 32)  
#define ASIU_GPIO_REGOFFSET        (0x200)
/****************************************************************************
**Description:	    管脚功能配置申请
**Input parameters:	
**Output parameters: 
**Returned value:
                    0:成功
                    -EIO:   错误的IO口
**Created by:		彭学斌，20151102
**----------------------------------------------------------------------------------------------------------------
** Modified by:		XXX (2011-04-17): 修改原因
****************************************************************************/
static int iomux_ccg_config_mux(iomux_pin_name_t pin, iomux_pin_cfg_t cfg)
{
    u32 pin_cfg;  
    u32 pin_module_r;
    u32 pin_module_rg;
    u32 pin_pad_r;
    u32 pin_pad_rg;
    u32 val;
    u32 iomux_mask;
//    u32 cur_iomux;
//    int pin_gpio_no;
    void __iomem *baseaddr = ioremap_nocache(CRMU_GENPLL_CONTROL0, 0x400);
    void __iomem *curraddr;

    
    //如果对应CCG的ALT0,则转为MUX_CONFIG_GPIO
    pin_cfg = cfg;
    if(pin_cfg == MUX_CONFIG_ALT0)
    {
        pin_cfg = MUX_CONFIG_GPIO;
    }
    
    pin_module_r = IOMUX_TO_MODULE_R(pin);
    pin_module_rg = IOMUX_TO_MODULE_RG(pin);
    pin_pad_r = IOMUX_TO_PAD_R(pin);
    pin_pad_rg = IOMUX_TO_PAD_RG(pin);    
//PAL_DEBUG("%s(%d):cfg=%d, mr=%d, mrg=%d, pr=%d, prg=%d\n", __FUNCTION__, __LINE__, 
//    pin_cfg, pin_module_r,  pin_module_rg, pin_pad_r,  pin_pad_rg);
    //设置独立PAD寄存器
    if(pin_pad_r < BCM_GPIO_PAD_R_MAX)
    {
        curraddr = baseaddr + CRMU_IOMUX_CTRL8_BASE + (pin_pad_r<<2);
        iomux_mask = (0x03 <<(pin_pad_rg<<1));
        val = readl(curraddr);
        val &= ~iomux_mask;
        
        if(pin_cfg == MUX_CONFIG_GPIO)
        {
            val |= (0x03<<(pin_pad_rg<<1));
        }
        else
        {
            //val |= (pin_cfg<<(pin_pad_rg<<1));
        }
//PAL_DEBUG("%s(%d):curraddr=%08X, baseaddr=%08X, val=%08X, iomask=%08X\n", __FUNCTION__, __LINE__, 
//    (u32)curraddr, (u32)baseaddr,  val, iomux_mask);
        writel(val, curraddr); 
    }
    //设置模块寄存器
    if(pin_cfg == MUX_CONFIG_GPIO)
    {
        //不需要设置
    }
    else if(pin_module_r < BCM_GPIO_MODULE_R_MAX)
    {
        curraddr = baseaddr + CRMU_IOMUX_CTRL0_BASE + (pin_module_r<<2);
        iomux_mask = (0x0f << (pin_module_rg<<2));
        val = readl(curraddr);
        val &= ~iomux_mask;
        val |= (pin_cfg<<(pin_module_rg<<2));
//PAL_DEBUG("%s(%d):curraddr=%08X, baseaddr=%08X, val=%08X, iomask=%08X\n", __FUNCTION__, __LINE__, 
 //   (u32)curraddr, (u32)baseaddr,  val, iomux_mask);
        writel(val, curraddr); 
    }
    
    iounmap(baseaddr);

    return 0;
}
static int iomux_asiu_config_mux(iomux_pin_name_t pin, iomux_pin_cfg_t cfg)
{
    u32 pin_cfg;  
    u32 pin_type;
    u32 pin_module_r;
    u32 pin_module_rg;
    u32 pin_pad_r;
    u32 pin_pad_rg;
    u32 val;
    u32 iomux_mask;
//    u32 cur_iomux;
//    int pin_gpio_no;
    void __iomem *baseaddr = ioremap_nocache(CRMU_GENPLL_CONTROL0, 0x400);
    void __iomem *curraddr;

    
    pin_type = IOMUX_TO_TYPE(pin);
    
    pin_module_r = IOMUX_TO_MODULE_R(pin);
    pin_module_rg = IOMUX_TO_MODULE_RG(pin);
    pin_pad_r = IOMUX_TO_PAD_R(pin);
    pin_pad_rg = IOMUX_TO_PAD_RG(pin);
    //如果对应CCG的ALT0,则转为MUX_CONFIG_GPIO
    pin_cfg = cfg;
    if((pin_type == BCM_GPIO_TYPE_ASIU1) && (pin_module_r == BCM_GPIO_MODULE_R_3P3_IOMUX_SEL))
    {
        if(pin_cfg == MUX_CONFIG_ALT0)
        {
            pin_cfg = MUX_CONFIG_GPIO;
        }
    }
    else
    {
        if(pin_cfg == MUX_CONFIG_ALT3)
        {
            pin_cfg = MUX_CONFIG_GPIO;
        }
    }
    //设置独立PAD寄存器
    if(pin_pad_r < BCM_GPIO_PAD_R_MAX)
    {
        curraddr = baseaddr + CRMU_IOMUX_CTRL8_BASE + (pin_pad_r<<2);
        iomux_mask = (0x03 <<(pin_pad_rg<<1));
        val = readl(curraddr);
        val &= ~iomux_mask;
        if(pin_cfg == MUX_CONFIG_GPIO)
        {
            val |= (0x03<<(pin_pad_rg<<1));
        }
        else
        {
            //val |= (pin_cfg<<(pin_pad_rg<<1));
        }
        writel(val, curraddr); 
    }
    //设置模块寄存器
    if(pin_cfg == MUX_CONFIG_GPIO)
    {
        //对于特殊管脚，如3P3作GPIO时，必须设模块寄存器
        if(pin_type == BCM_GPIO_TYPE_ASIU1)
        {
            if(pin_module_r == BCM_GPIO_MODULE_R_3P3_IOMUX_SEL)
            {
                curraddr = baseaddr + GPIO_3P3_IOMUX_SEL_BASE;
                iomux_mask = (0x0f << (pin_module_rg<<2));
                val = readl(curraddr);
                val &= ~iomux_mask;
                // ( afx nexgo_iomux 20151201 pengxuebin) GPI 3P3管脚复用配置
                //val |= (pin_cfg<<(pin_module_rg<<2));
                val |= (MUX_CONFIG_ALT0<<(pin_module_rg<<2));
                writel(val, curraddr); 
            }
        }
    }
    else if(pin_module_r < BCM_GPIO_MODULE_R_MAX)
    {
        if(pin_type == BCM_GPIO_TYPE_ASIU1)
        {
            if(pin_module_r == BCM_GPIO_MODULE_R_SMART_CARD_FCB_SEL)
            {
                curraddr = baseaddr + SMART_CARD_FCB_SEL_BASE;
            }
            else if(pin_module_r == BCM_GPIO_MODULE_R_3P3_IOMUX_SEL)
            {
                curraddr = baseaddr + GPIO_3P3_IOMUX_SEL_BASE;
            }
            else
            {
                iounmap(baseaddr);
                return -EIO;
            }
        }
        else
        {
            curraddr = baseaddr + CRMU_IOMUX_CTRL0_BASE + (pin_module_r<<2);
        }
        iomux_mask = (0x0f << (pin_module_rg<<2));
        val = readl(curraddr);
        val &= ~iomux_mask;
        val |= (pin_cfg<<(pin_module_rg<<2));
        writel(val, curraddr); 
    }
    
    iounmap(baseaddr);
    return 0;
}
static int iomux_aon_config_mux(iomux_pin_name_t pin, iomux_pin_cfg_t cfg)
{
    static s32 aon_gpio_init = 0;
    void __iomem *baseaddr;
#ifndef CONFIG_CYGNUS_PM    
    void __iomem *instram, *scratchram;
#endif
    
    if (aon_gpio_init == 0)
    {
        /* Enable AON GPIO Interrupt */
        baseaddr = ioremap_nocache(CRMU_STRAP_DATA_OFFSET, 0x200);
        writel(readl(baseaddr + CRMU_MCU_INTR_MASK_BASE) & (~(1 << CRMU_MCU_INTR_MASK__MCU_AON_GPIO_INTR_MASK)),
                baseaddr + CRMU_MCU_INTR_MASK_BASE);
        /* Enable MCU to IPROC mailbox interrupt */
        writel(readl(baseaddr + CRMU_IPROC_INTR_MASK_BASE) | (1 << CRMU_IPROC_INTR_MASK__IPROC_MAILBOX_INTR_MASK),
                baseaddr + CRMU_IPROC_INTR_MASK_BASE);
#ifndef CONFIG_CYGNUS_PM    
        /* REMAP M0 inst RAM addr, and put M0 bin code on it. */
        /* M0 bin function : to set CRMU_IPROC_MAIL_BOX0 to 0x4f495047, and set CRMU_IPROC_MAIL_BOX1 to 0x00000001 */
        instram = ioremap_nocache(0x03013a00, 0x100);
        writel(0x49024803, instram);
        writel(0x490362c1, instram+0x04);
        writel(0x47706301, instram+0x08);
        writel(0x4f495047, instram+0x0c);
        writel(0x03024000, instram+0x10);
        writel(0x00000001, instram+0x14);
        /* Redirect M0 AON_GPIO ISR to the ISR defined here */
        scratchram = ioremap_nocache(0x03018f00, 0x100);
        writel(0x03013a00, scratchram+0x88);
        iounmap(instram);
        iounmap(scratchram);
#endif    
        aon_gpio_init = 1;
        iounmap(baseaddr);
            
    }
    baseaddr = ioremap_nocache(BX_CRMU_STRAP_DATA, 0x200);
    //AON固定转GPIO口
    if(pin == BCM5830X_PIN_AON_GPIO5) 
    {
        /* AON GPIO pin 5 is muxed with UART_RX */
        writel(readl(baseaddr + CRMU_IOMUX_CONTROL_BASE) | (1 << CRMU_IOMUX_CONTROL__CRMU_OVERRIDE_UART_RX),
                baseaddr + CRMU_IOMUX_CONTROL_BASE);
    }
    iounmap(baseaddr);
    return 0;
}
static s32 iomux_config_sgpio(iomux_pin_name_t pin, u32 mod)
{
    u32 gpiopin;
    void __iomem *baseaddr = ioremap_nocache(CRMU_STRAP_DATA_OFFSET, 0x200);
    void __iomem *curraddr;
    u32 nBitMask;
    u32 value;
    
    /* Make sure the mux of sgpio and gpio is set to non secure */
    gpiopin = IOMUX_TO_GPIO(pin);
    if(gpiopin < BCM_SGPIO_NO_MAX)
    {
        curraddr = baseaddr + CHIP_SECURE_GPIO_CONTROL0_BASE + (gpiopin/32)*4;
        nBitMask = 1 << (gpiopin % 32);
        value = readl(curraddr);
      #if 0  
        if (value & nBitMask) {
        	value &= ~nBitMask;
        	writel(value, regaddr);
    	printk(KERN_WARNING "Set chip pin %d to non secure gpio. "
                    "Write 0x%08lx to 0x%08lx\n", gpiopin, (unsigned long)regaddr, value);
        }
      #endif
        if(mod)
        {   //设置成安全模式
            value |= nBitMask;
        }
        else
        {
        	value &= ~nBitMask;
        }
        writel(value, curraddr);
    }
    iounmap(baseaddr);
    return 0;
}
int iomux_config_mux(iomux_pin_name_t pin, iomux_pin_cfg_t cfg)
{
    int ret = -1;
    u32 pin_cfg;  
    u32 pin_type;
    spinlock_t	lock;
    unsigned long flags;
    
	//struct iproc_gpio_chip *chip;// = iproc_gpiolib_getchip(pin);
    //	iproc_gpio_lock(chip, flags);
  	//iproc_gpio_unlock(chip, flags);
  	//    spinlock_t		 lock;
  	
//#define iproc_gpio_lock(_oc, _fl) spin_lock_irqsave(&(_oc)->lock, _fl)
//#define iproc_gpio_unlock(_oc, _fl) spin_unlock_irqrestore(&(_oc)->lock, _fl)
	
    pin_type = IOMUX_TO_TYPE(pin);
    if(pin_type >= BCM_GPIO_TYPE_MAX)
    {
        PAL_DEBUG("%s(%d):GPIO_TYPE(%d) is err!\n", __FUNCTION__, __LINE__, pin_type);
        return -1;
    }
    pin_cfg = cfg;
    if(pin_cfg >= MUX_CONFIG_END)
    {
        PAL_DEBUG("%s(%d):cfg_param(%d) is err!\n", __FUNCTION__, __LINE__, pin_cfg);
        return -1;
    }
    spin_lock_irqsave(&lock, flags);
    //对于AON
    switch(pin_type)
    {
    case BCM_GPIO_TYPE_CCG:
        ret = iomux_ccg_config_mux(pin, cfg);
        break;
    case BCM_GPIO_TYPE_AON:
        ret = iomux_aon_config_mux(pin, cfg);
        break;
    case BCM_GPIO_TYPE_ASIU_NORMAL:
    case BCM_GPIO_TYPE_ASIU1:
        ret = iomux_asiu_config_mux(pin, cfg);
        break;
    }
    iomux_config_sgpio(pin, 0);
    spin_unlock_irqrestore(&lock, flags);
    return ret;
}
/****************************************************************************
**Description:	    管脚功能属性配置
**Input parameters:	
**Output parameters: 
**Returned value:
                    0:成功
                    -EIO:   错误的IO口
**Created by:		彭学斌，20151105
**----------------------------------------------------------------------------------------------------------------
** Modified by:		XXX (2011-04-17): 修改原因
****************************************************************************/
//#define CDRU_IPROC_GPIO_IO_CTRL0_BASE 0x164
int iomux_gpio_ccg_set_pad(iomux_pin_name_t pin, unsigned long config)
{
    u32 gpiopin;
    void __iomem *baseaddr;
    void __iomem *curraddr;
    u32 val;
    u32 pinmask;

    gpiopin = IOMUX_TO_GPIO(pin)-BCM_GPIO_CCG_OFFSET;
    if(gpiopin >= BCM_GPIO_CCG_MAX)
    {
        return -EIO;
    }
    if((config&PAD_CTL_PULL_MASK)==PAD_CTL_PULL_MASK)
    {
        return -EIO;    //参数错误
    }
    baseaddr = ioremap_nocache(CRMU_GENPLL_CONTROL0, 0x200);
    pinmask = (1<<gpiopin);
    //控制电流(CDRU_IPROC_GPIO_IO_CTRL0~CDRU_IPROC_GPIO_IO_CTRL2)
    curraddr = baseaddr + CDRU_IPROC_GPIO_IO_CTRL0_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_DRV_STRENGTH_B0)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    curraddr = baseaddr + CDRU_IPROC_GPIO_IO_CTRL1_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_DRV_STRENGTH_B1)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    curraddr = baseaddr + CDRU_IPROC_GPIO_IO_CTRL2_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_DRV_STRENGTH_B2)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    //---------------------------------------
    //迟滞(CDRU_IPROC_GPIO_IO_CTRL3)
    curraddr = baseaddr + CDRU_IPROC_GPIO_IO_CTRL3_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_HYST_MASK)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    //---------------------------------------
    //下拉(CDRU_IPROC_GPIO_IO_CTRL4)
    curraddr = baseaddr + CDRU_IPROC_GPIO_IO_CTRL4_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_PULL_DOWN_MASK)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    //---------------------------------------
    //上拉(CDRU_IPROC_GPIO_IO_CTRL5)
    curraddr = baseaddr + CDRU_IPROC_GPIO_IO_CTRL5_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_PULL_UP_MASK)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    //---------------------------------------
    //转化率(CDRU_IPROC_GPIO_IO_CTRL6)
    curraddr = baseaddr + CDRU_IPROC_GPIO_IO_CTRL6_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_SLEW_MASK)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    iounmap(baseaddr);
    return 0;
}
int iomux_gpio_asiu_set_pad(iomux_pin_name_t pin, unsigned long config)
{
    u32 gpiopin;
    u32 reg_offset;
    u32 shft;
    void __iomem *baseaddr;
    void __iomem *curraddr;
    u32 val;
    u32 pinmask;

    gpiopin = IOMUX_TO_GPIO(pin)-BCM_GPIO_ASIU_OFFSET;
    if(gpiopin >= BCM_GPIO_ASIU_MAX)
    {
        return -EIO;
    }
    if((config&PAD_CTL_PULL_MASK)==PAD_CTL_PULL_MASK)
    {
        return -EIO;    //参数错误
    }
    reg_offset = ASIU_GPIO_REGIDX(gpiopin) * ASIU_GPIO_REGOFFSET;
    shft = ASIU_GPIO_REGBIT(gpiopin);
    //映射指向寄存器组，每组寄存器间隔ASIU_GPIO_REGOFFSET(0x200)地址
    baseaddr = ioremap_nocache(ASIU_GP_DATA_IN_0+reg_offset, ASIU_GPIO_REGOFFSET);
    
    pinmask = (1<<shft);
    //控制电流(ASIU_GP_PAD_DRV0_CTRL_0~ASIU_GP_PAD_DRV2_CTRL_0)
    curraddr = baseaddr + ASIU_GP_PAD_DRV0_CTRL_0_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_DRV_STRENGTH_B0)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    curraddr = baseaddr + ASIU_GP_PAD_DRV1_CTRL_0_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_DRV_STRENGTH_B1)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    curraddr = baseaddr + ASIU_GP_PAD_DRV2_CTRL_0_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_DRV_STRENGTH_B2)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    //---------------------------------------
    //迟滞(ASIU_GP_PAD_HYST_CTRL_0)
    curraddr = baseaddr + ASIU_GP_PAD_HYST_CTRL_0_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_HYST_MASK)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    //---------------------------------------
    //下拉使能(ASIU_GP_RES_EN_0)
    curraddr = baseaddr + ASIU_GP_RES_EN_0_BASE;
    val = readl(curraddr);
    if(0 != (config&PAD_CTL_PULL_MASK))
    {   //使能上下拉
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    //---------------------------------------
    //上/下拉(ASIU_GP_PAD_RES_0)
    curraddr = baseaddr + ASIU_GP_PAD_RES_0_BASE;
    val = readl(curraddr);
    if((config&PAD_CTL_PULL_MASK)==PAD_CTL_PULL_UP_MASK)
    {   //上拉
        val |= pinmask;
    }
    else if((config&PAD_CTL_PULL_MASK)==PAD_CTL_PULL_DOWN_MASK)
    {   //下拉
        val &=(~pinmask);
    }
    writel(val, curraddr);
    //---------------------------------------
    //转化率(ASIU_GP_PAD_SLEW_CTRL_0)
    curraddr = baseaddr + ASIU_GP_PAD_SLEW_CTRL_0_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_SLEW_MASK)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    iounmap(baseaddr);
    return 0;
}
int iomux_gpio_aon_set_pad(iomux_pin_name_t pin, unsigned long config)
{
    u32 gpiopin;
    void __iomem *baseaddr;
    void __iomem *curraddr;
    u32 val;
    u32 pinmask;

    gpiopin = IOMUX_TO_GPIO(pin)-BCM_GPIO_AON_OFFSET;
    if(gpiopin >= BCM_GPIO_AON_MAX)
    {
        return -EIO;
    }
    if((config&PAD_CTL_PULL_MASK)==PAD_CTL_PULL_MASK)
    {
        return -EIO;    //参数错误
    }
    // ( afx 20151119) pengxuebin 增加AON管脚的上下拉、迟滞、转化率属性配置
    pinmask = (1<<gpiopin); 
    //----------------------------------------
    baseaddr = ioremap_nocache(CRMU_STRAP_DATA_OFFSET, 0x200);
        
    //控制电流(AON_GPIO_CONTROL3~AON_GPIO_CONTROL1)
    curraddr = baseaddr + AON_GPIO_CONTROL3_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_DRV_STRENGTH_B0)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    curraddr = baseaddr + AON_GPIO_CONTROL2_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_DRV_STRENGTH_B1)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    curraddr = baseaddr + AON_GPIO_CONTROL1_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_DRV_STRENGTH_B2)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);

    //---------------------------------------
    //迟滞(AON_GPIO_CONTROL5_BASE)
    curraddr = baseaddr + AON_GPIO_CONTROL5_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_HYST_MASK)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    
    //---------------------------------------
    //转化率(AON_GPIO_CONTROL6_BASE)
    curraddr = baseaddr + AON_GPIO_CONTROL6_BASE;
    val = readl(curraddr);
    if(config&PAD_CTL_SLEW_MASK)
    {
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    iounmap(baseaddr);
    //---------------------------------------
    
    //映射指向寄存器组
    baseaddr = ioremap_nocache(GP_DATA_IN, 0x200);
    
    //---------------------------------------
    //下拉使能(GP_PAD_RES)
    curraddr = baseaddr + (GP_RES_EN-GP_DATA_IN);
    val = readl(curraddr);
    if(0 != (config&PAD_CTL_PULL_MASK))
    {   //使能上下拉
        val |= pinmask;
    }
    else
    {
        val &=(~pinmask);
    }
    writel(val, curraddr);
    //---------------------------------------
    //上/下拉(ASIU_GP_PAD_RES_0)
    curraddr = baseaddr + (GP_PAD_RES-GP_DATA_IN);
    val = readl(curraddr);
    if((config&PAD_CTL_PULL_MASK)==PAD_CTL_PULL_UP_MASK)
    {   //上拉
        val |= pinmask;
    }
    else if((config&PAD_CTL_PULL_MASK)==PAD_CTL_PULL_DOWN_MASK)
    {   //下拉
        val &=(~pinmask);
    }
    writel(val, curraddr);
    iounmap(baseaddr);
    return 0;    
}
int iomux_gpio_set_pad(iomux_pin_name_t pin, unsigned long config)
{
    int ret = -1;
    u32 pin_type;
    spinlock_t	lock;
    unsigned long flags;
    
	pin_type = IOMUX_TO_TYPE(pin);
    if(pin_type >= BCM_GPIO_TYPE_MAX)
    {
        PAL_DEBUG("%s(%d):GPIO_TYPE(%d) is err!\n", __FUNCTION__, __LINE__, pin_type);
        return -1;
    }
    spin_lock_irqsave(&lock, flags);
    //对于AON
    switch(pin_type)
    {
    case BCM_GPIO_TYPE_CCG:
        ret = iomux_gpio_ccg_set_pad(pin, config);
        break;
    case BCM_GPIO_TYPE_AON:
        ret = iomux_gpio_aon_set_pad(pin, config);
        break;
    case BCM_GPIO_TYPE_ASIU_NORMAL:
    case BCM_GPIO_TYPE_ASIU1:
        ret = iomux_gpio_asiu_set_pad(pin, config);
        break;
    }
    spin_unlock_irqrestore(&lock, flags);
    return ret;
}


