#include "etc/test/intro_TEST.h"
#include "std/test/string_TEST.h"
#include "std/test/queue_TEST.h"
#include "etc/test/fib_TEST.h"

#include "gtest/gtest.h"

int main(int argc, char **argv)
{
  ::testing::InitGoogleTest(&argc, argv);
  int result = RUN_ALL_TESTS();

  getchar();
  return result;
}
