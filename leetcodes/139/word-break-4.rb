# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  return true if s == '' || s.nil?

  #@dp = {}
  #i = 0
  #while i < s.length
    #search(s[0..i], word_dict)
    #i += 1
  #end
  #@dp[s]

  @dp = {}
  search(s, word_dict)
end

def search(s, word_dict)
  puts s
  return @dp[s] if @dp[s]

  if s == '' || s.nil?
    return true
  end

  step = -1
  i = 0
  while i < word_dict.length
    j = 0
    matched = true
    word = word_dict[i]
    while j < word.length
      if s[j] == word[j]
        j += 1
      else
        matched = false
        break
      end
    end

    if matched && j != 0
      step = j
      if search(s[step..-1], word_dict)
        @dp[s] = true
        return @dp[s]
      end
    end

    i += 1
  end

  @dp[s] = false
  return @dp[s]
end

#puts word_break("aaaaaaa", ["aaaa", "aa"]) == false
#puts word_break("aaaaaaa", ["aaaa","aaa"]) == true
#puts word_break("cars", ['car', 'ca', 'rs']) == true
#puts word_break("leetcode", ["leet", "code"]) == true
#puts word_break("leetleetcode", ["leet", "code"])
s = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"
word_dict = ["a","aa","aaa","aaaa","aaaaa","aaaaaa","aaaaaaa","aaaaaaaa","aaaaaaaaa","aaaaaaaaaa"]
puts word_break(s, word_dict)
