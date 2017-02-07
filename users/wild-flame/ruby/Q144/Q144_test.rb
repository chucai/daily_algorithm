require "test-unit"
require "./Q144.rb"

# Definition for a binary tree node.

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# @param {TreeNode} root
# @return {Integer[]}
#
#
class TestPreOrderTraversal < Test::Unit::TestCase

  def create_tree
    root = TreeNode.new(1)
    b = TreeNode.new(2)
    c = TreeNode.new(3)
    root.right = b
    b.left = c
    return root
  end


  def test_class_treenode()
    root = create_tree
    assert_equal([1,2,3],preorder_traversal(root))
  end

end
