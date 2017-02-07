require "test-unit"
require "./Q3.rb"


class TestLongestSubstring < Test::Unit::TestCase
  def test_result
    assert_equal(length_of_longest_substring(""),0)
    assert_equal(length_of_longest_substring("abcabcbb"),3)
    assert_equal(length_of_longest_substring("bbbbb"),1)
    assert_equal(length_of_longest_substring("pwwkew"),3)
    assert_equal(length_of_longest_substring("a"),1)
    assert_equal(length_of_longest_substring("abcd"),4)
    assert_equal(length_of_longest_substring("dvdf"),3)
    assert_equal(length_of_longest_substring("msboaguwnnyqxnzlgdgwpbtrwblnsadeuguumoqcdrubetokyxhoachwdvmxxrdryxlmndqtukwagmlejuu"),14)
    assert_equal(length_of_longest_substring("ohvhjdml"),6)
  end
end
