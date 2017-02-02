# 快速排序的分治思想实现
def quick_sort(nums)
  return nums if nums.length <= 1
  return quick_sort(nums[1..-1].select { |n| n <= nums[0] }) + [nums[0]] + quick_sort(nums[1..-1].select { |n| n > nums[0] })
end

nums = [1, 3, 5, 2, 4]
puts quick_sort(nums).inspect

nums = [1, 4, 3, 5, 2, 4]
puts quick_sort(nums).inspect
