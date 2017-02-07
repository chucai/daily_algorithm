# @param {Integer[]} nums
# @return {Integer[]}
def largest_divisible_subset(nums)
  dp = [1]
  while i < nums.length
    while j < nums.length
        dp[j] = dp[i] + 1 if (nums[i] % nums[j] = 0 or nums[j] % nums[i] == 0)
    end
  end
end
