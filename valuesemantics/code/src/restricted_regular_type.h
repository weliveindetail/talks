#pragma once

#include <memory>
#include <iostream>
#include <string>

// ----------------------------------------------------------------------------

class noncopyable_regular_type_t
{
  using this_t = noncopyable_regular_type_t;

public:
  noncopyable_regular_type_t() = default;
  noncopyable_regular_type_t(this_t &&source) = default;
  ~noncopyable_regular_type_t() = default;

  // restriction: not copyable!
  noncopyable_regular_type_t(const this_t &source) = delete;

  // assign by value and move single members in
  this_t &operator=(this_t value)
  {
    m_name = std::move(value.m_name);
    return *this;
  }

  this_t &replace(std::string value)
  {
    m_name = std::move(value);
    return *this;
  }

  this_t &add(std::string value)
  {
    m_name += value;
    return *this;
  }

  std::string get() const
  {
    return m_name;
  }

private:
  std::string m_name = "uninitialized";

  // always compare for equality with a non-member function
  friend bool operator==(const this_t &lhs, const this_t &rhs)
  {
    return lhs.m_name == rhs.m_name;
  }
};

// ----------------------------------------------------------------------------

class no_value_type
{
public:
  template<class U> no_value_type &operator=(U) = delete;

  template<class U> friend bool &operator==(U, no_value_type) = delete;
  template<class U> friend bool &operator==(no_value_type, U) = delete;

  // etc. ?
};
