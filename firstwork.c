#include<stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>
#include <time.h>
int main(int argc,char *argv[])
{
    if(argc>1)
    {
        //命令行除了执行程序还有其他参数
        for(int i=1;i<argc;i++)
        {
            if((strcmp("-h",argv[i])==0) || strcmp("-help",argv[i])==0)
            {
                printf("输出help信息\n");
                printf("-h, -help      instraction for use\n");
                printf("-v,-verson       output verson information\n");
            }else if(strcmp("-v",argv[i])==0 || strcmp("-verson",argv[i])==0)
            {
                printf("输出verson信息\n");
                printf("bin_verson: 1.0 \n");
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
