#include <stdio.h>
#define lli long long int

extern void test(lli *a, lli *b, lli *c, lli *x);

int main(void)
{
    lli a = 1, b = 2, c = 26, x;
    printf("All true\n");
    test(&a, &b, &c, &x);
    printf("x = %lld\n\n", x);


    printf("Only A being false\n");
    a = -2;
    test(&a, &b, &c, &x);
    printf("x = %lld\n\n", x);

    printf("Only B being false\n");
    a = 1; b = 35;
    test(&a, &b, &c, &x);
    printf("x = %lld\n\n", x);
    return 0;
}
