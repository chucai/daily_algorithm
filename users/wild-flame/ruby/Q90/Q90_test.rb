require "test-unit"
require "./Q90.rb"

class TestSubsets < Test::Unit::TestCase

  def test_class_treenode()
    nums = [1,2,3] 
    assert_equal( [[],[1],[1,2],[1,2,3],[1,3],[2],[2,3],[3]].sort,subsets_with_dup(nums).sort)

    nums_with_dup = [1,2,2]
    assert_equal( [[],[1],[1,2],[1,2,2],[2],[2,2]].sort,subsets_with_dup(nums_with_dup).sort)
  
    nums_with_dup_2 = [4,4,4,1,4]
    assert_equal( [[],[1],[1,4],[1,4,4],[1,4,4,4],[1,4,4,4,4],[4],[4,4],[4,4,4],[4,4,4,4]].sort,subsets_with_dup(nums_with_dup_2).sort)
  end

end

