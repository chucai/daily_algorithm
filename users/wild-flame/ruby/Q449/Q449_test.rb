require "test-unit"
require "../Q144/Q144.rb"
require "./Q449.rb"
require "pry"

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
    root = TreeNode.new(41)
    b = TreeNode.new(37)
    root.left = b
    return root
  end


  def test_class_treenode()
    c = TreeNode.new(3)
    root = create_tree
    root = insert_bst(root, 9)
  end

end

