#pragma once

#include <memory>
#include <iostream>
#include <vector>
#include <string>
#include <cassert>

// ----------------------------------------------------------------------------

class object_t 
{
public:
  template <typename T>
  object_t(const T &x) : object_(new model<T>(x)) {
  }

  object_t(const object_t &x) : object_(x.object_->copy_()) {
  }

  object_t(object_t&& x) = default;

  object_t& operator=(object_t x) { 
    object_ = std::move(x.object_); 
    return *this; 
  }

  friend void draw(const object_t& x, std::ostream& out, size_t position) { 
    x.object_->draw_(out, position); 
  }

private:
  struct concept_t {
    virtual ~concept_t() = default;
    virtual concept_t* copy_() = 0;
    virtual void draw_(std::ostream&, size_t) const = 0;
  };

  template <typename T>
  struct model : concept_t {
    model(const T& x) : data_(x) {
    }

    concept_t* copy_() { 
      return new model(*this); 
    }

    void draw_(std::ostream& out, size_t position) const { 
      draw(data_, out, position); 
    }

    T data_;
  };

  std::unique_ptr<concept_t> object_;
};

// ----------------------------------------------------------------------------

using document_t = std::vector<object_t>;

class my_class_t {
/* ... */
};

// ----------------------------------------------------------------------------

void draw(const document_t& x, std::ostream& out, size_t position)
{
  out << std::string(position, ' ') << "<document>" << std::endl;

  for (auto& e : x) 
    draw(e, out, position + 2);

  out << std::string(position, ' ') << "</document>" << std::endl;
}

void draw(const my_class_t &, std::ostream &out, size_t position) { 
  out << std::string(position, ' ') << "my_class_t" << std::endl; 
}

void draw(int x, std::ostream &out, size_t position) { 
  out << std::string(position, ' ') << x << std::endl;
}

void draw(std::string x, std::ostream &out, size_t position) { 
  out << std::string(position, ' ') << x << std::endl;
}

// ----------------------------------------------------------------------------

using history_t = std::vector<document_t>;

void commit(history_t& x) { 
  assert(x.size()); 
  x.push_back(x.back()); 
}

void undo(history_t& x) { 
  assert(x.size()); 
  x.pop_back(); 
}

document_t& current(history_t& x) { 
  assert(x.size()); 
  return x.back(); 
}

// ----------------------------------------------------------------------------

void test_history_example()
{
  history_t h(1);

  current(h).emplace_back(0);
  current(h).emplace_back(std::string("Hello!"));

  draw(current(h), std::cout, 0);
  std::cout << "--------------------------" << std::endl;

  commit(h);

  auto dup = current(h);
  dup[0] = 1;

  current(h).emplace_back(dup);
  current(h).emplace_back(my_class_t());
  current(h)[1] = std::string("World");

  draw(current(h), std::cout, 0);
  std::cout << "--------------------------" << std::endl;

  undo(h);

  draw(current(h), std::cout, 0);
}

// ----------------------------------------------------------------------------
