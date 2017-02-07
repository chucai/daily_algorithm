require 'pry'

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
    return nil if root == nil
    return root if root == p or root == q

    left_subtree_result = lowest_common_ancestor(root.left, p, q)
    right_subtree_result = lowest_common_ancestor(root.right, p, q)

    if left_subtree_result != nil and right_subtree_result != nil 
      return root
    else
      return left_subtree_result || right_subtree_result
    end
end


