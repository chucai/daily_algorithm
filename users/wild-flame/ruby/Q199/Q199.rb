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
def right_side_view(root)
  return [] if root == nil

  queue = [root, "#"]
  result = []

  while queue.length > 1
    node = queue.shift

    if node == "#"
      next
    end

    if queue.first == "#"
      result << node.val
      queue << "#"
      print "#"
    end

 
    if node.left != nil
      queue << node.left
    end

    if node.right != nil
      queue << node.right
    end

  #  print node.val
  end

  return result
      
end
