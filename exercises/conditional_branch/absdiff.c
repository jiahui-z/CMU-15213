/*
 * =====================================================================================
 *
 *       Filename:  absdiff.c
 *
 *    Description:  Calculate the absolute difference between two numbers.
 *
 *        Version:  1.0
 *        Created:  11/21/2019 22:28:06
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

long absdiff(long x, long y) {
    long result;
    if (x > y) {
        result = x - y;
    } else {
        result = y - x;
    }
    return result;
}

int main(int argc, char *argv[]) {
    long x = atoi(argv[1]);
    long y = atoi(argv[2]);
    long z = absdiff(x, y);
    printf("The absolute difference between %ld and %ld is %ld.\n", x, y, z);
    return 0;
}

