#https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/
#
#Given an array where elements are sorted in ascending order, convert it to a height balanced BST.
# Definition for a binary tree node.
#
#
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# @param {Integer[]} nums
# @return {TreeNode}

def sorted_array_to_bst(nums)
  mid = nums.length/2
  mid_num = nums[mid]
  left = nums[0...mid]
  right = nums[mid+1...nums.length]
  root = TreeNode.new(mid_num)
  if left != nil && left.length > 0
    root.left = sorted_array_to_bst(left)
  end
  if right != nil && right.length > 0
    root.right = sorted_array_to_bst(right)
  end
  return root
end

if __FILE__ == $0
  sorted_array_to_bst([])
end

