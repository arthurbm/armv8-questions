#include <stdio.h>
#define lli long long int

extern void test(lli *a, lli *b);

int main(void)
{
    lli a = 0, b=0xFFFFFFFFFFFFFFFF;

    printf("Before\n");
    printf("a = %llx\n", a);
    printf("b = %llx\n", b);
    printf("\n");

    test(&a, &b);
    printf("After\n");
    printf("a = %llx\n", a);
    printf("b = %llx\n", b);
    return 0;
}
