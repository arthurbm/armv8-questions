#include <stdio.h>
#define lli long long int

lli test(char *word1, char *word2);

int main(void)
{
    char word1[] = "“grnrclszemskvbgcluwtgyvieip”";
    char word2[] = "leg";
    lli result = test(word1, word2);
    printf("Result: %lld\n", result);
    return 0;
}
