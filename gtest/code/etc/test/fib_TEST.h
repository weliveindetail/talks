#pragma once

#include "gtest/gtest.h"
#include "etc/src/fib.h"

// ----------------------------------------------

namespace etc {
  namespace test {

// ----------------------------------------------

// naive approach: assertion outside
bool isEven1A(int n) 
{
  return (n % 2) == 0;
}

TEST(Fibonacci, eachThirdIsEven1)
{
	EXPECT_TRUE(isEven1A(fib(0)));
	EXPECT_TRUE(isEven1A(fib(3)));
	EXPECT_TRUE(isEven1A(fib(6)));
	EXPECT_TRUE(isEven1A(fib(9)));
	//EXPECT_TRUE(isEven1A(fib(4))); //< this fails
}

// ----------------------------------------------

// naive approach: assertion inside
void isEven1B(int n) 
{
  EXPECT_EQ(0, n % 2);
}

TEST(Fibonacci, eachThirdIsEven2)
{
	isEven1B(fib(0));
	isEven1B(fib(3));
	isEven1B(fib(6));
	isEven1B(fib(9));
	//isEven1B(fib(4)); //< this fails
}

// ----------------------------------------------

// scoped trace approach
#define M_CALL_SCOPE_TRACED(statement) \
  { SCOPED_TRACE("in " #statement); statement; }

TEST(Fibonacci, eachThirdIsEven3)
{
	M_CALL_SCOPE_TRACED(isEven1B(fib(0)));
	M_CALL_SCOPE_TRACED(isEven1B(fib(3)));
	M_CALL_SCOPE_TRACED(isEven1B(fib(6)));
	M_CALL_SCOPE_TRACED(isEven1B(fib(9)));
	//M_CALL_SCOPE_TRACED(isEven1B(fib(4))); //< this fails
}

// ----------------------------------------------

// AssertionResult approach
::testing::AssertionResult isEven(int n) 
{
  if ((n % 2) == 0)
    return ::testing::AssertionSuccess();
  else
    return ::testing::AssertionFailure() << n << " is odd";
}

TEST(Fibonacci, eachThirdIsEven4)
{
	EXPECT_TRUE(isEven(fib(0)));
	EXPECT_TRUE(isEven(fib(3)));
	EXPECT_TRUE(isEven(fib(6)));
	EXPECT_TRUE(isEven(fib(9)));
	//EXPECT_TRUE(isEven(fib(4))); //< this fails
}

// ----------------------------------------------

  }
}
