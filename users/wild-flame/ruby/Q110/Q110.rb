# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
#
def is_balanced(root)
  return true if root == nil
  flag = true

  left_height = get_height(root.left) # 0 if root.left == nil
  right_height = get_height(root.right) # 0 if root.right == nil

  return false if left_height - right_height > 1 or right_height - left_height > 1

  flag = is_balanced(root.left) && is_balanced(root.right)

  return flag
end

def get_height(root)
  return 0 if root == nil
  return 1 if root.left == nil and root.right == nil
  left_height = get_height(root.left) + 1
  right_height = get_height(root.right) + 1
  return [left_height, right_height].max
end

