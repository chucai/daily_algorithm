# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
#
# TODO: Interative solution
# You need a stack to do so :D

def preorder_traversal(root)
# preorder meanss root first, then left child, then right child
  arr_integer = []
  return [] if root == nil
  arr_integer.push(root.val)
  
  return arr_integer + preorder_traversal(root.left) + preorder_traversal(root.right)
end


