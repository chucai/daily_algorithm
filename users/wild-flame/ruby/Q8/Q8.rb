# https://leetcode.com/problems/string-to-integer-atoi/
#
# 8. String to Integer (atoi)
#
# Implement atoi to convert a string to an integer.
# 
# Hint: Carefully consider all possible input cases. If you want a challenge, please do not see below and ask yourself what are the possible input cases.
# 
# Notes: It is intended for this problem to be specified vaguely (ie, no given input specs). You are responsible to gather all the input requirements up front.
# 
# 
# because this is base 10 so there is no need to calculate the base.

INT_BIT = 32
INT_MAX = 2 ** (INT_BIT - 1)  - 1
INT_MIN = - 2 ** (INT_BIT - 1)

def my_atoi(str)
  integer = str.to_i
  positive = true if integer >= 0

  positive ? [integer, INT_MAX].min : [integer, INT_MIN].max

end

# def my_atoi(str)
#   idx = 0
#   idx += 1 while str[idx] == " "
# 
#   case str[idx]
#   when '-'; idx, positive = idx + 1, false
#   when "+"; idx, positive = idx + 1, true
#   else    ; positive = true
#   end
# 
#   sum = 0
#   str[idx..-1].each_char do |char|
#     case char
#     when '0'; sum = sum * 10
#     when '1'; sum = sum * 10 + 1
#     when '2'; sum = sum * 10 + 2
#     when '3'; sum = sum * 10 + 3
#     when '4'; sum = sum * 10 + 4
#     when '5'; sum = sum * 10 + 5
#     when '6'; sum = sum * 10 + 6
#     when '7'; sum = sum * 10 + 7
#     when '8'; sum = sum * 10 + 8
#     when '9'; sum = sum * 10 + 9
#     else ; break
#     end
#   end
#     
#   positive ? [sum, INT_MAX].min : [-sum, INT_MIN].max
# end

# Note: 
#
# If i use str.to_i
# an error will occur when "2147483648" is used as the testcase.
#
# so if you want to use ruby, the first important thing is to limit the interger constrains. 


