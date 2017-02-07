# @param {String} haystack
# @param {String} needle
# @return {Integer}
require "pry"

def str_str(haystack, needle)
  return 0 if needle.length == 0

  index,offset = 0,0
  flag = false
  for index in (0..haystack.length-needle.length+1) 
    flag = true

    for offset in (0...needle.length) 
      if needle[offset] != haystack[offset+index] 
        flag = false 
        break
      end
      print [index,offset]
    end

    return index if flag == true # return index if needle is part of haystack
  end

  return -1 if flag == false
end

if __FILE__ == $0 
  puts str_str("abcdefgh","cdef") #2
  puts str_str("a","a") #0
  puts str_str("mississippi","a") #-1
  puts str_str("","a") #-1
  puts str_str("aaa","aaaa") #-1
  puts str_str "abb","abaaa" #-1
end

# you can also use build in function haystack.index(needle)