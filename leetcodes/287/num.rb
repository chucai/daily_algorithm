def find_duplicate_number(nums)
  left = 1
  right = nums.length - 1

  while left < right do
    mid = (left + right) / 2
    count = 0
    for num in nums
      count += 1  if num < mid
    end

    if count > mid
      right = mid
    else
      left = mid + 1
    end
  end

  return left
end

nums = [1,5,3,4,5,6]
puts nums.inspect
puts find_duplicate_number(nums)
