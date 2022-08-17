#ifndef COMMIT_H
#define COMMIT_H
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

#define SHORT_COMMIT 6
#define LONG_COMMIT 12
/*
check_commit:check commit format of the file
*/
int check_commit(char *filename);
#endif