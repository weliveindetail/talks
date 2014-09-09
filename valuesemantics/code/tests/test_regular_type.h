#pragma once

#include "../src/regular_type.h"
#include "../src/restricted_regular_type.h"

namespace tests
{  
  // what happens on copying?
  class regular_type_with_noncopyable_member
  {
    using this_t = regular_type_with_noncopyable_member;

  public:
    // explicitly defaulted construction / destruction
    regular_type_with_noncopyable_member() = default;
    regular_type_with_noncopyable_member(const this_t &source) = default;
    regular_type_with_noncopyable_member(this_t &&source) = default;
    ~regular_type_with_noncopyable_member() = default;

    // assign by value and move single members in
    this_t &operator=(this_t value)
    {
      m_member = std::move(value.m_member);
      return *this;
    }

  private:
    noncopyable_regular_type_t m_member;

    // always compare for equality with a non-member function
    friend bool operator==(const this_t &lhs, const this_t &rhs)
    {
      return lhs.m_member == rhs.m_member;
    }
  };

  void noncopyable_member()
  {
    regular_type_with_noncopyable_member a;
    //regular_type_with_noncopyable_member b(a); //< does not compile!

    std::cout << "a regular object with non-custom copy-ctor and a non-copyable member \nis not copyable itself!" << std::endl;
  }
}
