#include <cstdio>
#include <iostream>

#include <boost/optional.hpp>

#include "BasicExample.h"

void basic_example()
{
  using namespace std;
  using namespace BasicExample;
  
  {
    MaschineFactory factory;
    MaschineController *hardware = factory.createHardware();

    cout << hardware->getBrand();
    cout << boolalpha << ", mikro? " << hardware->isMikro() << endl;
  }
  {
    TraktorFactory factory;
    TraktorKontrol *hardware = factory.createHardware();
    cout << hardware->getBrand() << endl;
  }
}

boost::optional<int> try_parse_int(std::string s)
{
  return boost::optional<int>();
}

int main(int argc, char **argv)
{
  //basic_example();

  auto res = try_parse_int("12");
  int x = res.get_value_or(-1);

  std::cout << x;

  getchar();
  return 0;
}
