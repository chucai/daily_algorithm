def max_sum_of_sub_array(nums)
  return help(nums, 0, nums.length - 1)
end

def help(nums, start, stop)
  # 终止条件
  if start == stop
    return nums[start] > 0 ? nums[start] : 0
  end

  mid = (stop + start) / 2

  left_max_sum = help(nums, start, mid)
  right_max_sum = help(nums, mid + 1, stop)

  mid_left_max_sum = 0
  left_border_sum = 0
  i = mid
  while i >= start
    left_border_sum += nums[i]
    if left_border_sum > mid_left_max_sum
      mid_left_max_sum = left_border_sum
    end
    i -= 1
  end

  mid_right_max_sum = 0
  right_border_sum = 0
  i = mid + 1
  while i <= stop
    right_border_sum += nums[i]
    if right_border_sum > mid_right_max_sum
      mid_right_max_sum = right_border_sum
    end
    i += 1
  end

  return [ left_max_sum, right_max_sum, mid_left_max_sum + mid_right_max_sum ].max
end

nums = [ -2, 11, -4, 13, -5, 2]
puts max_sum_of_sub_array(nums) == 20

nums = [1, -3, 4, -2, -1, 6]
puts max_sum_of_sub_array(nums) == 7
