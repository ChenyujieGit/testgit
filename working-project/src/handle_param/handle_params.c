#include "handle.h"

int handle_params(int c,char *v[])//处理命令行参数
{
    if(c>1)
    {
        //命令行除了执行程序还有其他参数
        for(int i=1;i<c;i++)
        {
            if((strcmp("-h",v[i])==0) || strcmp("-help",v[i])==0)
            {
                printf("输出help信息\n");
                printf("-h, -help      instraction for use\n");
                printf("-v,-version       output verson information\n");
            }else if(strcmp("-v",v[i])==0 || strcmp("-version",v[i])==0)
            {
                printf("输出version信息\n");
                printf("bin_version: 1.0 \n");
                struct stat buff;
                stat("/mnt/hgfs/1linux/tshell/a.out",&buff);
                struct tm *t_tm=localtime(&buff.st_ctime);
                printf("Time when the file stat changed:%s",asctime(t_tm));
                   
            }
        }
    }else
    {
    	printf("Please input arguments\n");
    }

return 0;
}

static int params(char *p)//处理特定的参数
{
    if(*p=='h')
    {
        printf("输出help信息\n");
        printf("-h, -help      instraction for use\n");
        printf("-v,-verson       output verson information\n");
        printf("###############################\n");
    }else if (*p=='v')
    {
        printf("输出verson信息\n");
        printf("bin_version: 1.0 \n");
        struct stat buff;
        stat("/mnt/hgfs/1linux/tshell/a.out",&buff);
        struct tm *t_tm=localtime(&buff.st_ctime);
        printf("Time when the file stat changed:%s",asctime(t_tm));
        printf("###############################\n");
    }
    return 0;
}
int handle(int argc,char *argv[])//检测命令行是否存在有效参数并返回
{
    //param t1,t2;
    static const param long_opt[]={
    {"help",0,NULL,'h'},
    {"version",0,NULL,'v'},
    {0,0,0,0}
    };
    int long_index,i=0;
    //t1.name="help";t1.flag=NULL;t1.has_arg=0;t1.val='h';
    //t2.name="help";t2.flag=NULL;t2.has_arg=0;t2.val='v';
    int res;
    while ((res=getopt_long(argc,argv,"hv",long_opt,long_index))!=EOF)//检测命令行输入命令参数是否存在
    {
        i++;
        switch (res)
        {
        case 'h':
            printf("h\n");
            params("h");
            break;
        case 'v':
            printf("v\n");
            params("v");
            break;
        default:
            break;
        }
    }
    if(i==0)
    {
        printf("Please input argument\n");
    }

}