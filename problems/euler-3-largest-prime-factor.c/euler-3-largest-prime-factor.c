#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(int argc, char *argv[])
{
    if (argc == 1)
    {
        printf("\nNo Extra Command Line Argument Passed "
               "Other Than Program Name");
        return 0;
    }

    if (argc >= 2)
    {
        long long n = atoll(argv[1]);

        if (n <= 0) // Invalide input value
        {
            printf("\nInvalid Input: Please enter a positive integer.");
            return 1;
        }

        long long int div = 2;
        long long int maxPrime = -1;
        long sqrtN = sqrt(n);

        while (n > 1 && div <= sqrtN)
        {
            while (n % div == 0)
            {
                n = n / div;
                maxPrime = div;
            }
            {
                div++;
            }
        }

        if (n > 1) // n is not divisible by all possible divisors less than or equal to the square root of n
        {
            maxPrime = n;
        }

        printf("%lld\n", maxPrime);
        return 0;
    }
}