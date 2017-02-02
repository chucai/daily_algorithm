# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  left = 1
  right = nums.length - 1

  while left < right do
    mid = (left + right) / 2
    count = 0
    for num in nums
      count += 1  if num <= mid
    end

    if count > mid
      right = mid
    else
      left = mid + 1
    end
  end

  return right
end
