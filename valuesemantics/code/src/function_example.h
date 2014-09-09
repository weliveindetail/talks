#pragma once

#include <memory>
#include <iostream>
#include <functional>

// ----------------------------------------------------------------------------

std::function<int()> foo() 
{
  return [] { return 1; };
}

void test_function_example()
{
  std::function<int()> foo1 = foo();
  std::function<int()> foo2 = foo();

  //if (foo1 == foo2) ??
  /*{
    std::cout << "equal\n";
  }
  else
  {
    std::cout << "not equal\n";
  }*/
}

// ----------------------------------------------------------------------------
