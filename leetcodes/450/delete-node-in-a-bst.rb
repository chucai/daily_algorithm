# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} key
# @return {TreeNode}
def delete_node(root, key)
  node = find(root, key)
  return root unless node

  if node.left.nil? || node.right.nil?
    node = node.left || node.right
    return root
  end

  current_node

end

def find(node, key)
  return nil if node == nil

  if node.val == key
    return node
  end

  if node.val > key
    return find(node.left, key)
  else
    return find(node.right, key)
  end
end
