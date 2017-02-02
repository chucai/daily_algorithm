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
  @result = []
  @depth = []
  dfs(root, 0)

  position_p = -1
  position_q = -1

  @result.each_with_index do |item, index|
    if position_p == -1 && item == p
      position_p = index
    end

    if position_q == -1 && item == q
      position_q = index
    end
  end

  if position_p > position_q
    start = position_q
    stop = position_p
  else
    start = position_p
    stop = position_q
  end

  min = start
  i = start + 1
  while i < (stop + 1)
    if @depth[min] > @depth[i]
      min = i
    end
    i += 1
  end

  @result[min]
end

def dfs(root, position)
  return if root.nil?

  position += 1

  @result << root
  @depth << position

  dfs(root.left, position + 1)
  @result << root
  @depth << position
  dfs(root.right, position + 1)
  @result << root
  @depth << position
end
