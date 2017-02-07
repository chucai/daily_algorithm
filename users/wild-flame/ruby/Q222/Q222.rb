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
def count_nodes(root)
  return 0 if root == nil 

  height_left = 0 
  height_right = 0 

  node_p = root
  height_left = height_left + 1 while node_p = node_p.left

  node_p = root
  height_right = height_right + 1 while node_p = node_p.right

  if height_left == height_right  
    return (1 << height_left) - 1
  else
    return 1 + count_nodes(root.left) + count_nodes(root.right)
  end
end

