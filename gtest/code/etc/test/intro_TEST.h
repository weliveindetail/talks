#pragma once

#include "gtest/gtest.h"

// ----------------------------------------------

namespace etc {
  namespace test {

// ----------------------------------------------

// ..in your production code..

int Factorial(int n)
{
  return (n == 0) ? 1 : n * Factorial(n - 1);
}

// ----------------------------------------------

// ..in your test code..

TEST(FactorialTest, HandlesZeroInput)
{
  EXPECT_EQ(1, Factorial(0));
}

TEST(FactorialTest, HandlesPositiveInput)
{
  EXPECT_EQ(1, Factorial(1));
  EXPECT_EQ(2, Factorial(2));
  EXPECT_EQ(6, Factorial(3));
  EXPECT_EQ(40320, Factorial(8));
}

// ----------------------------------------------

  }
}
