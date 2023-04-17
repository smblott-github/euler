#include <vector>
#include <iostream>
#include <string>

//calculate all fibbonacchi nummbers from starting nummbers num1 and num2
//up to maximum of maximum_fib. Return vector with all even nummbers
int fib(int const& num1, int const& num2,long const& maximum_fib, std::vector<int> & even_fib)
{
  if (num2 % 2 == 0)
  {
    even_fib.push_back(num2);
  }

  if (num2 <= maximum_fib)
  {
    return fib(num2, num1 + num2, maximum_fib, even_fib);
  }
  else
  {
    return num2;
  }
}


// Return sum of all even fibunacchi nummber up to maximum_fib
int main(int argc, char *charv[])
{
  if ( argc != 2)
  {
    std::cout << " You need to enter maximum fibonacchi nummber" << std::endl;
    return 0;
  }

  long maximum_fib = std::stoi(charv[1]);
  std::vector<int> even_fib {};
  long sum {};
  fib(1, 2, maximum_fib, even_fib);

  for (int i: even_fib)
  {
    sum += i;
  }
  std::cout << sum << std::endl;
}
