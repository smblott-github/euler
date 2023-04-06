#include <vector>
#include <iostream>

//calculate all fibbonacchi nummbers from starting nummbers num1 and num2
//up to maximum of 4000000. Return vector with all even nummbers
int fib(int const& num1, int const& num2, std::vector<int> & even_fib)
{
  if (num2 % 2 == 0)
  {
    even_fib.push_back(num2);
  }

  if (num2 <= 4000000)
  {
    return fib(num2, num1 + num2, even_fib);
  }
  else
  {
    return num2;
  }
}



int main()
{
  std::vector<int> even_fib {};
  fib(1, 2, even_fib);
  long sum {};
  for (int i: even_fib)
  {
    sum += i;
  }
  std::cout << sum;
}
