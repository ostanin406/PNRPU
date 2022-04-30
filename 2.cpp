// https://server.179.ru/tasks/olymp/002.html#g_t002

#include <cstdint>
#include <cstdio>
#include <cstdlib>

int karty[5] = { 7,3,7,7,3 };

int main()
{
    int count[5] = {};
    for (int i = 0; i < 5; i++)
    {
        int c = 0;
        for (int j = 0; j < 5; j++)
            if (karty[i] == karty[j]) c++;
        count[c - 1]++;
    }

    if (count[5 - 1]) printf("poker\n");
    else if (count[4 - 1]) printf("four of a kind\n");
    else if (count[3 - 1]) printf(count[2 - 1] ? "full house\n" : "three of a kind\n");
    else if (count[2 - 1]) printf(count[2 - 1] == 4 ? "two pairs\n" : "one pair\n");
    else printf("all different\n");

    return 0;
}