# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
# 移除了排序
def word_break(s, word_dict)
  #@dp = {}
  return search(s, word_dict)
end

def search(s, word_dict)
  #return @dp[s] if @dp[s]
  #puts s
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
        #@dp[s] = true
        #return @dp[s]
        return true
      end
    end

    i += 1
  end

  #@dp[s] = false
  #return @dp[s]
  return false
end

puts word_break("aaaaaaa", ["aaaa", "aa"]) == false
puts word_break("aaaaaaa", ["aaaa","aaa"]) == true
puts word_break("cars", ['car', 'ca', 'rs']) == true
puts word_break("leetcode", ["leet", "code"]) == true
#puts word_break("leetleetcode", ["leet", "code"])
