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

def rob(root)
    @cached = {} if @cached == nil

    return @cached[root] if @cached[root] 
    
    money = 0 
    return 0 if root == nil # money == 0
    return root.val if root.left == nil and root.right == nil # money == root.val

    money1 = root.val + D(root.left) + D(root.right)
    money2 = rob(root.left) + rob(root.right)

    @cached[root] = [money1,money2].max
    return @cached[root]
end

def D(root)
  return 0 if root == nil
  return rob(root.left) + rob(root.right)
end


