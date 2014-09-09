#pragma once

#include "../src/regular_type.h"
#include "../src/log_create_copy_move.h"

namespace tests
{
  namespace // file scope declarations
  {
    using object_t = combined_regular_type_t;
    using log_object_t = log_create_copy_move_t<object_t>;
  }
  
  // -------------------------------------------------------------- recommended

  // return by value
  log_object_t factory_function()
  {
    log_object_t instance;
    instance.replace("L1 ");

    return instance;
  }
  
  // return by value over two levels
  log_object_t factory_function_l2()
  {
    log_object_t instance = factory_function();
    instance.add("L2 ");

    return instance;
  }
  
  // return by value over three levels
  log_object_t factory_function_l3()
  {
    log_object_t instance = factory_function_l2();
    instance.add("L3 ");

    return instance;
  }

  void return_by_value()
  {
    log_object_t x1 = factory_function();
    std::cout << x1.get() << std::endl;

    log_object_t x2 = factory_function_l2();
    std::cout << x2.get() << std::endl;

    log_object_t x3 = factory_function_l3();
    std::cout << x3.get() << std::endl;
  }
  
  void return_by_value_and_modify()
  {
    log_object_t x4 = factory_function().add("some foo");
    std::cout << x4.get() << std::endl;

    log_object_t x5 = factory_function().add("some foo").replace("bar");
    std::cout << x5.get() << std::endl;
  }

  // ---------------------------------------------------------- NOT recommended
  
  // return by out param
  void old_factory_function(log_object_t &result)
  {
    result.replace("L1 ");
  }
  
  // return by out param over two levels
  void old_factory_function_l2(log_object_t &result)
  {
    old_factory_function(result);
    result.add("L2 ");
  }
  
  // return by out param over three levels
  void old_factory_function_l3(log_object_t &result)
  {
    old_factory_function_l2(result);
    result.add("L3 ");
  }

  void return_by_out_param()
  {
    log_object_t x1;
    old_factory_function(x1);
    std::cout << x1.get() << std::endl;

    log_object_t x2;
    old_factory_function_l2(x2);
    std::cout << x2.get() << std::endl;

    log_object_t x3;
    old_factory_function_l3(x3);
    std::cout << x3.get() << std::endl;
  }
}
