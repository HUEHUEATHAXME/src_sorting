#ifndef SORT_H
#define SORT_H

typedef int (*cmpfunc_t)(void *d, int a, int b);
typedef int (*exchfunc_t)(void *d, int a, int b);

int sort(void *d,
         int left, int right,
         cmpfunc_t cmpfunc,
         exchfunc_t exchfunc);

#endif  /* SORT_H */
