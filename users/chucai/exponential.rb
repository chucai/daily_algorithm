# 求k的n次幂
def exponential(k, n)
  return 1 if n == 0
  return k if n == 1

  if n % 2 == 0
    num = exponential(k, n/2)
    return num * num
  else
    return exponential(k, n - 1) * k
  end
end

puts exponential(5, 2) == 25
puts exponential(5, 4) == 625
puts exponential(2, 1) == 2
puts exponential(2, 0) == 1
puts exponential(0, 3) == 0
