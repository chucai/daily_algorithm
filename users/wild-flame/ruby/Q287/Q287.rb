# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  start = nums.length
  slow, fast = start, start

  while(true)  
    fast = nums[nums[fast - 1] - 1] # fast.next.next 
    slow = nums[slow - 1] #slow.fast
    break if fast == slow
  end

  slow = start
  while(true) 
    fast = nums[fast - 1]
    slow = nums[slow - 1]
    break if fast == slow
  end

  return fast
end
