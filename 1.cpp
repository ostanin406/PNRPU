// https://server.179.ru/tasks/olymp/001.html#g_t001

#include <cstdint>
#include <cstdio>
#include <cstdlib>

int comnata[10][10] =
{
    {1,1,1,1,1,1,1,1,1,1},
    {1,0,1,1,1,1,1,1,1,1},
    {1,0,1,1,1,1,1,1,1,1},
    {1,0,1,1,1,1,1,1,1,1},
    {1,0,1,1,1,1,1,1,1,1},
    {1,0,1,1,1,1,1,1,1,1},
    {1,0,1,1,1,1,1,1,1,1},
    {1,1,1,1,1,1,1,1,1,1},
    {1,0,1,1,1,1,1,1,1,1},
    {1,0,1,1,1,1,1,1,1,1}
};

int count = 0;

void poisk(int m, int n)
{
    if (m == 0 && n == 10 - 1)
    {
        count++;
        return;
    }
    if (m >= 1 && comnata[m - 1][n])poisk(m - 1, n);
    if (n < 10 - 1 && comnata[m][n + 1])poisk(m, n + 1);
}

int main()
{
    poisk(10 - 1, 0);
    printf("%i\n", count);
    return 0;
}