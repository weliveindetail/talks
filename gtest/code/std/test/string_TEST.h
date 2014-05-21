#pragma once

#include "gtest/gtest.h"
#include "std/src/string.h"

// ----------------------------------------------

namespace std {
  namespace test {

// ----------------------------------------------

TEST(String_Init, DefaultCtor)
{
  const std::string emptyString;
  EXPECT_STREQ("", emptyString.c_str());
}

// ----------------------------------------------

TEST(String_Init, CtorFromConstCharPtr)
{
  const char *pszValue = "hello gtest!";
  const std::string strValue(pszValue);

  EXPECT_STREQ(pszValue, strValue.c_str());
  EXPECT_EQ(strlen(pszValue), strValue.size());
}

// ----------------------------------------------

TEST(String_Init, CopyCtor)
{
  const std::string source("hellow gtest!");
  const std::string copy(source);

  EXPECT_EQ(source, copy);
  EXPECT_NE(source.c_str(), copy.c_str());
}

// ----------------------------------------------

TEST(String_Init, CopyAssign)
{
  const std::string source("hellow gtest!");
  const std::string copy = source;

  EXPECT_EQ(source, copy);
  EXPECT_NE(source.c_str(), copy.c_str());
}

// ----------------------------------------------

TEST(String_Init, MoveCtor)
{
  std::string moveSource("hellow gtest!");
  const std::string moveDest(std::move(moveSource));
  
  EXPECT_STREQ("", moveSource.c_str());
  EXPECT_STREQ("hellow gtest!", moveDest.c_str());
}

// ----------------------------------------------

TEST(String_Init, MoveAssign)
{
  std::string moveSource("hellow gtest!");
  const std::string moveDest(std::move(moveSource));
  
  EXPECT_STREQ("", moveSource.c_str());
  EXPECT_STREQ("hellow gtest!", moveDest.c_str());
}

// ----------------------------------------------

  }
}
