#pragma once

template<class type_t>
class log_create_copy_move_t : private type_t
{
  using base_t = type_t;
  using this_t = log_create_copy_move_t<type_t>;

public:
  using base_t::add;
  using base_t::get;
  using base_t::replace;

  log_create_copy_move_t() : base_t()
  {
    std::cout << "create\n";
  }

  log_create_copy_move_t(const this_t &src) : base_t(src)
  {
    std::cout << "copy\n";
  }

  log_create_copy_move_t(this_t &&src) : base_t(std::forward<this_t>(src))
  { 
    std::cout << "move\n";
  }

  // implicit conversion
  log_create_copy_move_t(base_t src) : base_t(std::move(src))
  {
    std::cout << "move convert\n";
  }
};
