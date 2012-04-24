#include <stdio.h>
#include <assert.h>
#include "sort.h"

int sort(void *d, 
         int left, int right,
         cmpfunc_t cmpfunc,
         exchfunc_t exchfunc) 
{
    int i, j;

    assert(d != NULL);
    assert(left >= 0 && right >= 0);
    assert(right >= left);
    
    for (i = left+1; i <= right; i++) {
        for (j = i; j > left; j--) {
            if (cmpfunc(d, j-1, j) < 0) {
                exchfunc(d, j-1, j);
            } else {
                /* Optimization: everything sorted, relatively */
                break;
            }
        }
    }
    return 0;
}
