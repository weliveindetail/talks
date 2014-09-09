#pragma once

#include <vector>

#include "../src/regular_type.h"
#include "../src/log_create_copy_move.h"

namespace tests
{
  namespace // file scope declarations
  {
    using object_t = combined_regular_type_t;
    using log_object_t = log_create_copy_move_t<object_t>;

    // just a simple helper for testing
    static std::vector<log_object_t> s_local_sink;
  }

  // pass sink argument by value
  void function_with_sink_argument(log_object_t sink_arg)
  {
    std::cout << sink_arg.get() << std::endl;
    s_local_sink.push_back(std::move(sink_arg));
  }

  // pass const argument by value
  void function_with_const_argument(log_object_t const_arg)
  {
    std::cout << const_arg.get() << std::endl;
  }

  void pass_by_value_sink_argument()
  {
    std::cout << "pass temporary\n";
    function_with_sink_argument(log_object_t());
    
    std::cout << "\npass l-value\n";
    log_object_t x1;
    x1.replace("x1");
    function_with_sink_argument(x1);

    std::cout << "\npass r-value\n";
    log_object_t x2;
    x2.replace("x2");
    function_with_sink_argument(std::move(x2));
    
    std::cout << "\nvector:\n";
    for (auto &obj : s_local_sink) 
      std::cout << obj.get() << std::endl;
  }
  
  void pass_by_value_const_argument()
  {
    std::cout << "pass temporary\n";
    function_with_const_argument(log_object_t());
    
    std::cout << "\npass l-value\n";
    log_object_t x1;
    x1.replace("x1");
    function_with_const_argument(x1);

    std::cout << "\npass r-value\n";
    log_object_t x2;
    x2.replace("x2");
    function_with_const_argument(std::move(x2));
  }
}
