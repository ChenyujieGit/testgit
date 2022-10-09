#include<linux/init.h>
#include<linux/module.h>
#include<linux/kernel.h>
#include<linux/platform_device.h>
#include<nexgo/bcm5830x_pins.h>

//keypad_pin_cfg_t无法找到，根据元素自行定义
typedef struct T2_col_pin_cfg
{
    iomux_pin_name_t pin;
    iomux_pin_cfg_t pin_cfg;
    iomux_pad_config_t pad_cfg;
}keypad_pin_cfg_t;

struct mytest_platfrom_data
{
    keypad_pin_cfg_t T5_col_pin_cfg[6];
    keypad_pin_cfg_t T5_row_pin_cfg[4];
};

struct mytest_platfrom_data pdata={
    {
{BCM5830X_PIN_GPIO8,MUX_CONFIG_ALT0, PAD_CTL_PULL_NONE},
{BCM5830X_PIN_GPIO9,MUX_CONFIG_ALT0, PAD_CTL_PULL_NONE},
{BCM5830X_PIN_GPIO10,MUX_CONFIG_ALT0, PAD_CTL_PULL_NONE},
{BCM5830X_PIN_GPIO11,MUX_CONFIG_ALT0, PAD_CTL_PULL_NONE},
{BCM5830X_PIN_GPIO12,MUX_CONFIG_ALT0, PAD_CTL_PULL_DOWN},
{BCM5830X_PIN_GPIO23,MUX_CONFIG_ALT0, PAD_CTL_PULL_NONE}
},{
{BCM5830X_PIN_GPIO16,MUX_CONFIG_ALT0,PAD_CTL_DRV_10mA | PAD_CTL_PULL_NONE},
{BCM5830X_PIN_GPIO17,MUX_CONFIG_ALT0,PAD_CTL_DRV_10mA | PAD_CTL_PULL_NONE},
{BCM5830X_PIN_GPIO18,MUX_CONFIG_ALT0,PAD_CTL_DRV_10mA | PAD_CTL_PULL_NONE},
{BCM5830X_PIN_GPIO19,MUX_CONFIG_ALT0,PAD_CTL_DRV_10mA | PAD_CTL_PULL_NONE}
}
};
// static keypad_pin_cfg_t T5_col_pin_cfg[6] = {
//         //col0
//         [0] = {
//             .pin        = BCM5830X_PIN_GPIO8,
//             .pin_cfg    = MUX_CONFIG_ALT0,
//             .pad_cfg    = PAD_CTL_PULL_NONE,
//         },
//         //col1
//         [1] = {
//             .pin        = BCM5830X_PIN_GPIO9,
//             .pin_cfg    = MUX_CONFIG_ALT0,
//             .pad_cfg    = PAD_CTL_PULL_NONE,
//         },
//         //col2
//         [2] = {
//             .pin        = BCM5830X_PIN_GPIO10,
//             .pin_cfg    = MUX_CONFIG_ALT0,
//             .pad_cfg    = PAD_CTL_PULL_NONE,
//         },
//         //col3
//         [3] = {
//             .pin        = BCM5830X_PIN_GPIO11,
//             .pin_cfg    = MUX_CONFIG_ALT0,
//             .pad_cfg    = PAD_CTL_PULL_NONE,
//         },
//         //col4
//                 //key-col4 has NO pull-down resistor, so set PULL_DOWN
//         [4] = {
//             .pin        = BCM5830X_PIN_GPIO12,
//             .pin_cfg    = MUX_CONFIG_ALT0,
//             .pad_cfg    = PAD_CTL_PULL_DOWN,
//         },
//         //row4--use as col
//         [5] = {
//             .pin        = BCM5830X_PIN_GPIO23,
//             .pin_cfg    = MUX_CONFIG_ALT0,
//             .pad_cfg    = PAD_CTL_PULL_NONE,
//         },
// };
//ROW
// static keypad_pin_cfg_t T5_row_pin_cfg[4] = {
//         //Hardware engineer suggests output current should be 10mA!
//         //row0
//         [0] = {
//             .pin        = BCM5830X_PIN_GPIO16,
//             .pin_cfg    = MUX_CONFIG_ALT0,
//             .pad_cfg    = PAD_CTL_DRV_10mA | PAD_CTL_PULL_NONE,
//         },
//         //row1
//         [1] = {
//             .pin        = BCM5830X_PIN_GPIO17,
//             .pin_cfg    = MUX_CONFIG_ALT0,
//             .pad_cfg    = PAD_CTL_DRV_10mA | PAD_CTL_PULL_NONE,
//         },
//         //row2
//         [2] = {
//             .pin        = BCM5830X_PIN_GPIO18,
//             .pin_cfg    = MUX_CONFIG_ALT0,
//             .pad_cfg    = PAD_CTL_DRV_10mA | PAD_CTL_PULL_NONE,
//         },
//         //row3
//         [3] = {
//             .pin        = BCM5830X_PIN_GPIO19,
//             .pin_cfg    = MUX_CONFIG_ALT0,
//             .pad_cfg    = PAD_CTL_DRV_10mA | PAD_CTL_PULL_NONE,
//         },
// };


struct platform_device  platform_device_test={
	.name="platform_device_test", // 设备名在这个节点/sys/bus/platform/platform_device_test
	.id=-1,
    .dev ={
        .platform_data=&pdata,
    },
	//.resource=platform_device_resource,//对硬件资源的描述
	//.num_resources=ARRAY_SIZE(platform_device_resource)//通过ARRAY_SIZE获取资源个数
};

static int __init platform_device_init(void)
{	int ret;
    
	ret=platform_device_register(&platform_device_test);
	if(ret)
    {
    printk("register fail\n");
    }
	printk("platform_device_init\n");
	return 0;
}
static void __exit platformdevice_remove(void)
{
	platform_device_unregister(&platform_device_test);
	printk("platformdevice_remove\n");
}
module_init(platform_device_init);
module_exit(platformdevice_remove);
MODULE_LICENSE("GPL");
