#include <stdio.h>
#define lli long long int

lli test(char *number);

int main(void)
{
    char number[] = "1234";
    lli result = test(number);
    printf("Result: %lld\n", result);
    return 0;
}