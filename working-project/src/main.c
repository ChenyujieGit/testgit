#include <stdio.h>
#include "handle.h"
#include "commit.h"
#include "global.h"

int num;

int main(int argc,char *argv[])
{
    //handle_params(argc,argv);
    printf("############test arguments###############\n");
    handle(argc,argv); //检测命令行是否存在有效参数并返回
    char *p="sda f";
    char a[5]={"sdgsd"};
    int j=strlen(p);
    printf("j=%d\n",j);
    j=strlen(a);
    printf("j=%d\n",j);
    printf("############test global_var###############\n");
    num=10;
    printf("in bin num=%d\n",num);
    out_lib_var();
    set_lib_val(num);
    // out_lib_var();
    num=get_lib_val();
    printf("in bin num=%d\n",num);
    printf("###########test commit format############\n");
    printf("Please input filename:\n");
    char filename[100]={0};
    scanf("%s",filename);
    int i=check_commit(filename);//检测文件的commit格式
    if(i==1)
    {
        printf("commit format is right\n");
    }
    return 0;
}
