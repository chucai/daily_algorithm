# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}
#

def kth_smallest(root, k)
  heap = [] # to save the output of inorder traversal
  heap = in_order(root,heap)
  return heap[k-1]
end

def in_order(root,heap)
  return nil if root.nil?    

  # left subtree
  in_order(root.left,heap)
  # root_node
  heap << root.val
  # right_subtree
  in_order(root.right,heap)

  return heap
end

