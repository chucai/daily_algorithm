# Definition for a binary tree node.
#
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# Encodes a tree to a single string.
#
# @param {TreeNode} root
# @return {string}
def serialize(root)
  return '' if root.nil?

  heap = []
  heap = preorder(root,heap)

  data = ''
  heap.each do |i|
    if data == ''
      data = i.to_s
    else 
      data = data + "#" + i.to_s
    end
  end

  return data
end

# Decodes your encoded data to tree.
#
# @param {string} data
# @return {TreeNode}
def deserialize(data)
  return nil if data == ''

  root = nil
  heap = data.split("#")

  heap.each do |i|
    root = insert_bst(root,i.to_i)
  end

  return root
end

def preorder(root, heap)
  return nil if root.nil? 
  heap << root.val
  # left subtree
  preorder(root.left, heap)
  # right subtree
  preorder(root.right, heap)
  return heap
end

def insert_bst(root, key)
  if root.nil?
    root = TreeNode.new(key)
    return root
  end

  if key < root.val
    root.left = insert_bst(root.left, key)
  else key > root.val
    root.right = insert_bst(root.right, key)
  end

  return root
end

# 41#37#24#1#0#2#4#3#9#7#35#30#29#26#32#31#34#36#39#38#40#44#42#43#48#46#45#47#49
