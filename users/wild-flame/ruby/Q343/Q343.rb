# https://leetcode.com/problems/integer-break/
# Given a positive integer n, break it into the sum of at least two positive integers and maximize the product of those integers. Return the maximum product you can get.
# 
# For example, given n = 2, return 1 (2 = 1 + 1); given n = 10, return 36 (10 = 3 + 3 + 4).
# 
# Note: You may assume that n is not less than 2 and not larger than 58.
# 
# Hint:
# 
# There is a simple O(n) solution to this problem.
# You may check the breaking results of n ranging from 7 to 10 to discover the regularities.
# Credits:
# Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
#


# @param {Integer} n
# @return {Integer}
def integer_break(n)

  # Initial   
  tables = [0,1,2,3] #f(0),f(1),f(2),f(3), assumet f(0),f(1) exists but actully 

  return 1 if n==2
  return 2 if n==3

  # Compute
  for i in (4..n)
    tables << [tables[i-2] * 2,tables[i-3] * 3].max
  end

  print tables

  return tables.last
end

integer_break(40)

