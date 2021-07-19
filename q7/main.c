
#include <stdio.h>

char test(char *a_points, char *b_points);

int main(void)
{
    char winner, a_word[] = "GOTICO", b_word[] = "ARMYQ";
    winner = test(a_word, b_word);
    printf("winner: %c\n", winner);
    return 0;
}
