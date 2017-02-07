require "test-unit"
require "./Q236.rb"

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
class TestLCA < Test::Unit::TestCase

  def create_tree
    root = TreeNode.new(1)
    b = TreeNode.new(2)
    c = TreeNode.new(3)
    root.right = b
    b.left = c
    return root,b,c
  end


  def test_lca_treenode()
    root,b,c = create_tree
    assert_equal(b,lowest_common_ancestor(root,b,c))
  end

end
