#pragma once

#include "gtest/gtest.h"
#include "std/src/queue.h"

// ----------------------------------------------

namespace std {
  namespace test {

// ----------------------------------------------

class Queue_Test : public ::testing::Test 
{
protected:
  void SetUp() override
  {
    m_q1.push(1);

    m_q2.push(2);
    m_q2.push(3);
  }

  void TearDown() override
  {
  }

  std::queue<int> m_q0;
  std::queue<int> m_q1;
  std::queue<int> m_q2;
};

// ----------------------------------------------

TEST_F(Queue_Test, IsEmptyInitially)
{
  EXPECT_TRUE(m_q0.empty());
  EXPECT_EQ(0, m_q0.size());
}

// ----------------------------------------------

TEST_F(Queue_Test, DequeueWorks) 
{
  ASSERT_EQ(1, m_q1.size());
  ASSERT_EQ(2, m_q2.size());

  int n = m_q1.back(); m_q1.pop();
  EXPECT_GT(n, 0);
  EXPECT_TRUE(m_q1.empty());

  int n1 = m_q2.back(); m_q2.pop();
  int n2 = m_q2.back(); m_q2.pop();
  EXPECT_GT(n1, 0);
  EXPECT_GT(n2, 0);
  EXPECT_TRUE(m_q2.empty());
}

// ----------------------------------------------

  }
}
