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

  if root == nil
    return nil
  elsif key < root.val # go to the left child | Condition 1
   root.left = delete_node(root.left, key)
  elsif key > root.val  # go to the right child | Condition 2
   root.right = delete_node(root.right, key)
  else
    # if find the node to delete
    if root.left == nil
      root = root.right
    elsif root.right == nil
      root = root.left
    else # find the minimal in the right subtree and move it to root. delete it as condition 1/2
      minimal = find_min_node(root.right).val
      root.val = minimal
      root.right = delete_node(root.right, minimal)
    end

  end

  return root
  
end

def find_min_node(root)
  while root.left
    root = root.left
  end

  return root
end

