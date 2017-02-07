# https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/
#
# 167. Two Sum II - Input array is sorted  QuestionEditorial Solution
#
# Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.
# 
# The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.
# 
# You may assume that each input would have exactly one solution.
# 
# Input: numbers={2, 7, 11, 15}, target=9
# Output: index1=1, index2=2



# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  index1 = 1
  index2 = numbers.length
  while index1 < index2
    if numbers[index1-1] + numbers[index2-1] == target
      return index1,index2
    elsif numbers[index1-1] + numbers[index2-1] < target 
      index1 += 1 
    else
      index2 -= 1
    end 
  end
  return nil
end

if __FILE__ == $0 
  print two_sum([2,3,4], 6)
end
