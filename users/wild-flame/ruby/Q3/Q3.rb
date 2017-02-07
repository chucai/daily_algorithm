# @param {String} s
# @return {Integer}
#

def length_of_longest_substring(s)

  return 0 if s.length == 0 
  return 1 if s.length == 1

  i,j=0,0
  hash_s = Hash.new(0)
  cur_length = 0
  max_length = 0 

  while j < s.length
    if hash_s[s[j]] == 0
      hash_s[s[j]] = 1
      cur_length = cur_length + 1
      j = j+1
    else
      hash_s[s[i]] = 0
      i = i+1 
      cur_length = cur_length - 1
    end

    print "\n[i,j]:\n"
    print [i,j]
    print hash_s
    print "\ncur_length\n"
    print cur_length

    max_length = [max_length,cur_length].max
  end

  return max_length 
end

if __FILE__ == $0
  print length_of_longest_substring("abcabcbb") #3
  print length_of_longest_substring("bbbbb") #1
  print length_of_longest_substring("pwwkew") #3
  print length_of_longest_substring("a") #1
  print length_of_longest_substring("abcd") #4
  print length_of_longest_substring("dvdf") #3
end

# Solution page
#
# https://leetcode.com/articles/longest-substring-without-repeating-characters/
