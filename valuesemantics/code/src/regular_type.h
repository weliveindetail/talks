#pragma once

#include <memory>
#include <iostream>
#include <string>

// ----------------------------------------------------------------------------

// Martinho Fernandes: "rule of zero"
// http://flamingdangerzone.com/cxx11/2012/08/15/rule-of-zero.html

class implicit_regular_type_t
{
  using this_t = implicit_regular_type_t;

public:
  void replace(std::string value)
  {
    m_name = std::move(value);
  }

  void add(std::string value)
  {
    m_name += value;
  }

  std::string get() const
  {
    return m_name;
  }

private:
  std::string m_name = "uninitialized";

  // always compare for equality with a non-member function
  friend bool operator==(this_t lhs, this_t rhs)
  {
    return lhs.m_name == rhs.m_name;
  }
};

// ----------------------------------------------------------------------------

// Scott Meyers: "rule of five defaults"
// http://scottmeyers.blogspot.de/2014/03/a-concern-about-rule-of-zero.html

class explicit_regular_type_t
{
  using this_t = explicit_regular_type_t;

public:
  // default constructible
  explicit_regular_type_t() = default;

  // #1: explicitly defaulted destructor
  ~explicit_regular_type_t() = default;

  // #2 & #3: explicitly defaulted copy assign/create
  explicit_regular_type_t(const this_t &source) = default;
  this_t &operator=(const this_t &source) = default;

  // #4 & #5: explicitly defaulted move assign/create (not yet supported in msvc 2013!)
  explicit_regular_type_t(this_t &&source) = default;
  this_t &operator=(this_t &&source) = default;

  void replace(std::string value)
  {
    m_name = std::move(value);
  }

  void add(std::string value)
  {
    m_name += value;
  }

  std::string get() const
  {
    return m_name;
  }

private:
  std::string m_name = "uninitialized";

  // always compare for equality with a non-member function
  friend bool operator==(this_t lhs, this_t rhs)
  {
    return lhs.m_name == rhs.m_name;
  }
};

// ----------------------------------------------------------------------------

// Scott Meyers & John Lakos: defaulted c/d-tors + assign by value
// https://parasol.tamu.edu/people/bs/622-GP/value-semantics.pdf

class combined_regular_type_t
{
  using this_t = combined_regular_type_t;

public:
  // explicitly defaulted construction / destruction
  combined_regular_type_t() = default;
  combined_regular_type_t(const this_t &source) = default;
  combined_regular_type_t(this_t &&source) = default;
  ~combined_regular_type_t() = default;

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
  friend bool operator==(this_t lhs, this_t rhs)
  {
    return lhs.m_name == rhs.m_name;
  }
};
