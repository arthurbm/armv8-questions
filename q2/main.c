#include <stdio.h>
#define lli long long int

extern void test(lli *a, lli *b, lli *c, lli *x);

int main(void)
{
    lli a, b, c, x;
    test(&a, &b, &c, &x);
    printf("x = %lld\n", x);
    printf("\n");
    return 0;
}
