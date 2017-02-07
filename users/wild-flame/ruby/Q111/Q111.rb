# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
  return 0 if root == nil
  level = 1
  return dfs_min_depth(root, level)
end

def dfs_min_depth(root, level)
  return level if root.left == nil && root.right == nil

  left_min_depth = dfs_min_depth(root.left, level + 1) if root.left != nil
  right_min_depth = dfs_min_depth(root.right, level + 1) if root.right != nil 

  if root.left != nil && root.right == nil
    return left_min_depth
  elsif root.right != nil && root.left == nil 
    return right_min_depth
  else
    return [right_min_depth, left_min_depth].min
  end
end
