#include <stdio.h>
#define lli long long int

void test(lli *entry, lli *limit);

int main(void)
{
    // You can test with any 64 bit number and it's going to work
    lli entry = 10, limit = 2;

    test(&entry, &limit);
    printf("entry = %016llX\n", entry);
    return 0;
}
