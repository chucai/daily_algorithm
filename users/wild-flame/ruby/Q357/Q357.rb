require 'pry'

# @param {Integer} n
# @return {Integer}
def count_numbers_with_unique_digits(n)
  return 1 if n==0
  return 10 if n==1

  cur_sum = 9 # This is f(k) = 9 * 9 * 8 * ... (9 - k + 2) [The first factor is 9 because a number cannot start with 0]
  for j in (2..n)
    cur_sum = cur_sum * (9 - j + 2)
  end


  result = count_numbers_with_unique_digits(n-1) + cur_sum

  puts result
  return result
end

# print count_numbers_with_unique_digits(4)
