# https://leetcode.com/problems/subsets-ii/
#
# Given a collection of integers that might contain duplicates, nums, return
# all possible subsets.
#
# Notes:
#
#     + Elements in a subset must be in non-descending order.
#     + The solution set must not contain duplicate subsets.
#
# For example:
#
#     If nums = [1, 2, 2], a solution is:
#
#         [
#           [2],
#           [1],
#           [1, 2, 2],
#           [2, 2],
#           [1, 2],
#           []
#         ]
#
# @param {Integer[]} nums
# @return {Integer[][]}
#
#
def subsets_with_dup(nums)
  subsets = []

  total = 2**nums.length

  for iter in (0..total-1)
    cur_subset = []
    logic = iter.to_s(2).split("").reverse # 0010100A
    for i in (0...logic.length)
      if logic[i] == "1"
         cur_subset.push(nums[i])
      end
    end
    subsets.push(cur_subset.sort) unless subsets.index(cur_subset.sort)
  end
  return subsets

end

# Another solution
# Credit by https://github.com/0x01f7/leetcode/blob/master/algorithms/subsets_ii.rb
# Should think about it

# def subsets_with_dup(nums)
#    nums.sort.each_with_object([[]]) do |num, memo|
#    memo.concat(memo.map(&->(s){ s.dup << num }))
#    end.uniq
# end
#
# chekc here to see how each_with_object work
# http://stackoverflow.com/questions/19064209/how-is-each-with-object-supposed-to-work

