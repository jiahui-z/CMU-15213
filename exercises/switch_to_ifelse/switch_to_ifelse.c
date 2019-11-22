/*
 * =====================================================================================
 *
 *       Filename:  switch_to_ifelse.c
 *
 *    Description:  Demonstrate the assembly code when there are only two cases but case numbers are sparse.
 *
 *        Version:  1.0
 *        Created:  11/22/2019 16:48:31
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Jiahui Zhang 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdio.h>
#include <stdlib.h>

void switch_to_ifelse(long x) {
    switch(x) {
        case 1:
            printf("hello 1");
        case 100000:
            printf("hello 100000");
    }
}

int main(int argc, char *argv[]) {
    long x = atoi(argv[1]);
    switch(x);
    return 0;
}
