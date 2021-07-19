
#include <stdio.h>
#define lli long long int

lli test(char *num);

int main(void)
{
    char c[] = "ARTHUR"; // 6 vows
    lli count = test(c);
    printf("Count: %lld\n", count);
    return 0;
}
