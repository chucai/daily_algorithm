# @param {String} s
# @param {String} t
# @return {Boolean}
#

def is_anagram(s, t)
  h_s = Hash.new(0)
  s.each_char do 
    |char| h_s[char] += 1
  end

  h_t = Hash.new(0)
  t.each_char do 
    |char| h_t[char] += 1
  end

  if h_s == h_t
    return true
  else 
    return false
  end
end

if __FILE__ == $0
  is_anagram("anagram", "nagaram") # true
  is_anagram("rat", "car") #false
end

# https://leetcode.com/articles/valid-anagram/
#
# Actually this question has another approach which use sorting
# 
# It use less space but consume more time, since sorting is O(nlogn) while comparing is O(n)
