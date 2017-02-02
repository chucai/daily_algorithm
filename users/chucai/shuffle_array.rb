def shuffle_array(nums)
  help(nums, 0, nums.length - 1)
end

def help(nums, left, right)
  return nums if left == right

  mid = (left + right) / 2
  q = 1 + (left + mid) / 2

  k = 1
  i = q
  while i <= mid
    nums[i], nums[mid+k] = nums[mid+k], nums[i]

    i += 1
    k += 1
  end

  help(nums, left, mid)
  help(nums, mid + 1, right)

  return nums
end

nums = [1, 2, 3, 4]
puts shuffle_array(nums) == [1, 3, 2, 4]

nums = [1, 2, 5, 8, 3, 4, 7, 9]
puts shuffle_array(nums) == [1, 3, 2, 4, 5, 7, 8, 9]
