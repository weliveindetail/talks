#include <cstdio>

enum Attributes {
#define GET_ATTR_ENUM
#include "HelloAttribute.inc"
#undef GET_ATTR_ENUM
};

void dumpAttribute(const char *Name, int Value) {
  printf("Attribute %s has value %d\n", Name, Value);
}

#define STRINGIFY(a) #a

int main() {
#define GET_ATTR_NAMES
#define ATTRIBUTE_ENUM(ENUM_NAME, DISPLAY_NAME) dumpAttribute(#DISPLAY_NAME, ENUM_NAME);
#include "HelloAttribute.inc"
#undef GET_ATTR_NAMES
#undef ATTRIBUTE_ENUM

  return 0;
}
