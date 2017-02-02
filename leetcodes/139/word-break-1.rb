# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  i = 0
  while i < s.length
    step = -1
    j = 0
    position = 0
    while position < word_dict.length
      matched = true
      word = word_dict[position]
      while j < word.length
        if word[j] != s[i+j]
          matched = false
          break
        end
        j += 1
      end
      if matched && j != 0
        step = j
        break
      else
        position += 1
        next
      end
    end
    if step == -1
      return false
    else
      i += step
    end
  end

  return true
end

puts word_break("cars", ['car', 'ca', 'rs'])
#puts word_break("leetcode", ["leet", "code"])
#puts word_break("leetleetcode", ["leet", "code"])
