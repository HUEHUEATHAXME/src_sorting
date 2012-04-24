#include <stdio.h>
#include <assert.h>
#include "sort.h"

int sort(void *d, 
         int left, int right,
         cmpfunc_t cmpfunc,
         exchfunc_t exchfunc) 
{
    int i, j;
    int min;

    assert(d != NULL);
    assert(left >= 0 && right >= 0);
    assert(right >= left);
    
    for (i = left; i < right; i++) {
        min = i;
        for (j = i+1; j <= right; j++) {
            if (cmpfunc(d, j, min) < 0) {
                min = j;
            }
        }
        exchfunc(d, i, min);
    }
    return 0;
}
