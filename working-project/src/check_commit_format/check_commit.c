#include "commit.h"

int check_commit(char *filename)
{
    int fd=open(filename,O_RDONLY);
    char *buf[5]={"标题","修改原因","修改方案","关联仓库","备注"};
    char buf1[SHORT_COMMIT+1]={0};
    char buf2[LONG_COMMIT+1]={0};
    char p=0;
    int k=0,j=0;
    int ret=0,i=0;
    int flot=0;
    for(i=0;i<5;)
    {
        k=strlen(buf[i]);
        while(k--)//获取每行前面需要的字符串
        {
            ret=read(fd,&p,1);
            if(ret==-1)
            {
                printf("read failed\n");
                close(fd);
                return -1;
            }else if(ret==0)
            {
                printf("read finish\n");
                close(fd);
                return 0;
            }else if(p=='\n')
            {
                break;
            }
            if(j<SHORT_COMMIT)//获取短字符串
            {
                buf1[j]=p;
                buf2[j++]=p; 
            }else
            {
                buf2[j++]=p; 
            }  
        }
        buf1[SHORT_COMMIT]='\0';
        buf2[LONG_COMMIT]='\0';
        j=0;
        if(strcmp(buf1,buf[i])==0)//匹配格式
        {
            printf("匹配了：%s\n",buf1);
            i++;
        }
        else if(strcmp(buf2,buf[i])==0)
        {
            printf("匹配了：%s\n",buf2);
            i++;
        }else 
        {
            for(flot=0;flot<5;flot++)//检测格式是否出现重复
            {
                if((strcmp(buf1,buf[flot])==0)||(strcmp(buf2,buf[flot])==0))
                {
                    printf("commit error\n");
                    return -1;
                }
            }
        }
        if(k==-1)
        {
            while(1)//将光标读取到行尾
            {
                ret=read(fd,&p,1);
                if(ret==-1)
                {
                    printf("read failed\n");
                    close(fd);
                    return -1;
                }else if(ret==0)
                {
                    printf("read finish\n");
                    close(fd);
                    return 0;
                }else 
                {
                    if(p=='\n')
                    break;
                }
            }
        }
        k=strlen(buf[i]);
    }  
close(fd);
return 1;
}
