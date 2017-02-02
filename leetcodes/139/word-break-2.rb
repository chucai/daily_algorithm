# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
# 递归超时版本
def word_break(s, word_dict)
  word_dict.sort! { |x, y| x.length <=> y.length }
  puts s
  puts word_dict.inspect
  return search(s, word_dict)
end

def search(s, word_dict)
  puts s
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
        return true
      end
    end

    i += 1
  end

  return false
end

#puts word_break("aaaaaaa", ["aaaa", "aa"])
#puts word_break("aaaaaaa", ["aaaa","aaa"])
#puts word_break("cars", ['car', 'ca', 'rs'])
#puts word_break("leetcode", ["leet", "code"])
#puts word_break("leetleetcode", ["leet", "code"])
