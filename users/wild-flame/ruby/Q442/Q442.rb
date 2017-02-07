# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
  result = []

  for num in nums
    if nums[num.abs - 1] > 0
      nums[num.abs-1] = - nums[num.abs - 1]   
    else
      result << num 
    end
  end
  return result
end

