#include "global.h"

void out_lib_var()//输出lib中的同名全局变量大小
{
    printf("in lib num=%d\n",num);
    //printf("num=%d\n",num);
}
int set_lib_val(int Num)//读取bin程序中的同名全局变量
{
    num=Num;
    out_lib_var();
}
int get_lib_val()//获取lib中的同名全局变量
{
    printf("set lib num=20\n");
    num=20;
    return num;
}
