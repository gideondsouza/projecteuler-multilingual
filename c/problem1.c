#include<stdio.h>

int main()
{
    int A = 0, i=1;
    while(i < 1000)
    {
        if(i % 3 == 0 || i % 5 == 0)
        {
            A += i;
        }
        i++;
    }
    printf("%d", A);
    return 0;
}
