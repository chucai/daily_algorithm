# @param {Integer[]} nums
# @return {Integer}

# https://leetcode.com/problems/remove-duplicates-from-sorted-array/

# Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.
# 
# Do not allocate extra space for another array, you must do this in place with constant memory.
# 
# For example,
# Given input array nums = [1,1,2],
# 
# Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn't matter what you leave beyond the new length.
# 


def remove_duplicates(nums)

  i = 0 
  j = 0 # Start point.

  while j < nums.length 
    j = j+1 # i=0,j=1
    if nums[j] != nums[i]

      # swap nums[j] and nums[i+1]
      i = i + 1
      temp = nums[j]
      nums[j] = nums[i]
      nums[i] = temp

    end
  end

  print nums
  return i
end

# This can be viewed as __MAIN__ 
#
if __FILE__ == $0
  puts remove_duplicates([])
  puts remove_duplicates([1])
  puts remove_duplicates([1,2,3])
  puts remove_duplicates([1,1,2,3,4,4,5])
end
