# @param {Integer} n
# @return {Integer}
def count_numbers_with_unique_digits(n)
  return 1 if n == 0
  return 10 if n == 1

  @ans = 1
  dfs(n, 0)
  @ans
end

def dfs(n, position)
  if position == n
    return
  end

  if position == 0 || position == 1
    count = 9
  else
    count =
  end


  count = 11 - position
  @ans += position * count
  dfs(n, position + 1, count - 1)

  return
end

