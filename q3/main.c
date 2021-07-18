#include <stdio.h>
#define lli long long int

extern void test(lli *a, lli *b);

int main(void)
{
    lli a = 1, b = 2;
    test(&a, &b);
    printf("\n");
    return 0;
}
