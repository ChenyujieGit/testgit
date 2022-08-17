#include "global.h"
#include <stdio.h>
int num;
int main()
{
	int num=10;
	printf("in bin num=%d\n",num);
	out_lib_var();
	set_lib_val(num);
	num=get_lib_val();
	printf("in bin num=%d\n",num);
	return 0;
}
