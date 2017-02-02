# @param {String} p
# @return {Integer}
def find_substring_in_wrapround_string(p)
  count_hash = {}
  s = {}
  arr = ('a'..'z').to_a
  arr.each_with_index do |char, index|
    if index == 25
      s[char] = 'a'
    else
      s[char] = arr[index+1]
    end
  end

  result = []
  path = []

  dfs(p, s, 0, true, path, result)

  return result.count
end

def dfs(p, s, position, last, path, result)
  if position == p.length
    result << path.clone
    return
  end

  if last
    if path.length == 0
    end
  end



end

#puts find_substring_in_wrapround_string("a")
#puts find_substring_in_wrapround_string("abcde")
#puts find_substring_in_wrapround_string("abcdemn")
puts find_substring_in_wrapround_string("zaba") == 6
