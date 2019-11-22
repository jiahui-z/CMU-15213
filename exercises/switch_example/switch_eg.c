/*
 * =====================================================================================
 *
 *       Filename:  switch_eg.c
 *
 *    Description:  Demonstrate the assembly code for switch statement.
 *
 *        Version:  1.0
 *        Created:  11/22/2019 16:09:36
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Jiahui Zhang 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include <stdio.h>

long switch_eg(long x, long y, long z) {
    long w = 1; // gcc looks at all the code and finds out actually don't use w initialized very much, then it won't bother doing it until somewhere in the code blocks
    switch(x) {
        case 1:
            w = y * z;
            break;
        case 2: 
            w = y / z;
            /* fall through */
        case 3: 
            w += z;
            break;
        case 5:
        case 6: 
            w -= z;
            break;
        default:
            w = 2;
    }
    return w;
} 

int main(int argc, char *argv[]) {
    long x = atoi(argv[1]);
    long y = atoi(argv[2]);
    long z = atoi(argv[3]);
    long result;
    result = switch_eg(x, y, z);
    printf("The result for case %ld when the input is %ld and %ld is %ld\n", x, y, z, result);
    return 0;
}
