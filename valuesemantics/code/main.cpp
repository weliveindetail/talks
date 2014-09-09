#include <cstdlib>
#include <iostream>

#include "tests/test_pass_by_value.h"
#include "tests/test_return_by_value.h"
#include "tests/test_regular_type.h"

#include "src/history_example.h"
#include "src/function_example.h"

int main()
{
  //test_history_example();
  //test_function_example();

  std::cout << "\ntests::return_by_value()\n";
  tests::return_by_value();
  
  std::cout << "\ntests::return_by_value_and_modify()\n";
  tests::return_by_value_and_modify();

  std::cout << "\ntests::return_by_out_param()\n";
  tests::return_by_out_param();
  
  std::cout << "\ntests::pass_by_value_sink_argument()\n";
  tests::pass_by_value_sink_argument();
  
  std::cout << "\ntests::pass_by_value_const_argument()\n";
  tests::pass_by_value_const_argument();
  
  std::cout << "\ntests::noncopyable_member()\n";
  tests::noncopyable_member();

  getchar();
	return 0;
}
