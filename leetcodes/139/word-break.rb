# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  return true if s == '' || s.nil?

  @dp = {}
  stop = -1
  start = 0
  step = 0
  while (start + step) < s.length
    if search(s[start..(start+step)], word_dict)
      stop = start + step
      start = start + step + 1
      step = 0
    else
      step += 1
    end
  end
  return stop == s.length - 1
end

def search(s, word_dict)
  return @dp[s] if @dp[s]

  if s == '' || s.nil?
    return true
  end

  if word_dict.include? s
    @dp[s] = true
  else
    @dp[s] = false
  end

  return @dp[s]
end

#puts word_break("aaaaaaa", ["aaaa", "aa"]) == false
puts word_break("aaaaaaa", ["aaaa","aaa"]) == true
#puts word_break("cars", ['car', 'ca', 'rs']) == true
#puts word_break("leetcode", ["leet", "code"]) == true
#puts word_break("leetleetcode", ["leet", "code"])
#s = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"
#word_dict = ["a","aa","aaa","aaaa","aaaaa","aaaaaa","aaaaaaa","aaaaaaaa","aaaaaaaaa","aaaaaaaaaa"]
#puts word_break(s, word_dict)
