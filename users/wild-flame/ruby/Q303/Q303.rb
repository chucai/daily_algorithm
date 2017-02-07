# https://leetcode.com/problems/range-sum-query-immutable/
#
# Given an integer array nums, find the sum of the elements between indices i and j (i ≤ j), inclusive.
# 
# Example:
# Given nums = [-2, 0, 3, -5, 2, -1]
# 
# sumRange(0, 2) -> 1
# sumRange(2, 5) -> -1
# sumRange(0, 5) -> -3
# Note:
# You may assume that the array does not change.
# There are many calls to sumRange function.
#

class NumArray

  # Initialize your data structure here.
  # @param {Integer[]} nums
  def initialize(nums)
    @tables = []
    for i in nums 
      if @tables.length == 0
        @tables = [i]
      else
        @tables << (@tables[-1] + i)
      end
    end
  end

  # @param {Integer} i
  # @param {Integer} j
  # @return {Integer}
  def sum_range(i, j)
    if i == 0 
      return @tables[j]
    else
      return @tables[j] - @tables[i-1]
    end
  end

end

# Your NumArray object will be instantiated and called as such:

# num_array = NumArray.new([-2,0,3,-5,2,-1])
# print num_array.sum_range(0, 2)
# print num_array.sum_range(0, 5)
# print rnum_array.sum_range(2, 5)
