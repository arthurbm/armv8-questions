
#include <stdio.h>
#define lli long long int

lli test(char *num);

int main(void)
{
    char c[] = "arthur"; // 6 letters, 2 vows
    lli count = test(c);
    printf("Count: %lld\n", count);
    return 0;
}
