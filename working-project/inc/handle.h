#ifndef HANDLE_H
#define HANDLE_H
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>
#include <time.h>
#include <getopt.h>
/*
handle_parms:handle input params and output information
c=the number of params
v=the params string
*/
typedef struct opt 
    {  
        const char *name;  
        int         has_arg;  
        int        *flag;  
        int         val;  
    }param; 
int handle_params(int c,char *v[]);
static int params(char *p);
/*
handle_parms:handle input params and output information
*/
int handle(int argc,char *argv[]);
#endif