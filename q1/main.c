#include <stdio.h>
#define lli long long int

extern void test(lli *a, lli *b, lli *m);

int main(void)
{
    lli a, b, m ;

    a = 5;
    b = 5;
    test(&a, &b, &m);
    printf("First case\n");
    printf("a = %lld\n", a);
    printf("b = %lld\n", b);
    printf("m = %lld\n", m);
    printf("\n");

    a = 10;
    b = 3;
    test(&a, &b, &m);
    printf("Second case\n");
    printf("a = %lld\n", a);
    printf("b = %lld\n", b);
    printf("m = %lld\n", m);
    printf("\n");

    a = 3;
    b = 10;
    test(&a, &b, &m);
    printf("Third case\n");
    printf("a = %lld\n", a);
    printf("b = %lld\n", b);
    printf("m = %lld\n", m);
    printf("\n");
    return 0;
}