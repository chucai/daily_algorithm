def serialize(root)
  return "[]" if root == nil
  queue = [root] # queue is for bfs
  heap = [] # heap is used to store visited node 

  while queue.length > 0
    node = queue.shift
    if node.nil?
      heap << nil
    else
      heap << node.val
      queue.push(node.left)
      queue.push(node.right)
    end
  end

  heap.pop while heap[-1] == nil # slice the nil in the end
  print heap
  heap.to_s
end
# Decodes your encoded data to tree.
#
# @param {string} data
# @return {TreeNode}
def deserialize(data)
  arr_str = data.slice(1...-1).split(",")
  return nil if arr_str.length == 0
  heap = []
  arr_str.each do |a| 
    if a == "nil" or a == " nil"
      heap << nil
    else
      heap << a.to_i
    end
  end
  root = TreeNode.new(heap.shift.to_i)
  queue = [root]
  result = []

  while queue.length > 0
    node = queue.shift
    print node.val
    if node != nil 
      node.left = TreeNode.new(heap.shift.to_i)
      queue.push << node.left
      node.right = TreeNode.new(heap.shift.to_i)
      queue.push << node.right
    end
    result << node 
  end

  return result.first 
end

