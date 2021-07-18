#include <stdio.h>
#define lli long long int

void test(lli *x);

int main(void)
{
    // You can test with any 64 bit number and it's going to work
    lli x = 0xFFFFFFFFFFFFFFFF;
    printf("Before inversion\n");
    printf("x = %016llX\n", x);
    test(&x);
    printf("After inversion\n");
    printf("x = %016llX\n", x);
    return 0;
}
