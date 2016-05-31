//
// FizzBuzzC
// Source/fizzbuzz.c
//
#include "fizzbuzz.h"

int main(int argc, const char **argv)
{
    doFizzBuzz();
    
    return 0;
}

void doFizzBuzz()
{
    for (int i = 0; i < 100; ++i)
    {
        int n = (i + 1);
        
        bool bIsMultipleOfThree = (0 == (n % 3));
        bool bIsMultipleOfFive  = (0 == (n % 5));
        
        if (bIsMultipleOfThree && bIsMultipleOfFive)
            printf("FizzBuzz\n");
        else if (bIsMultipleOfThree)
            printf("Fizz\n");
        else if (bIsMultipleOfFive)
            printf("Buzz\n");
        else
            printf("%d\n", n);
    }
}