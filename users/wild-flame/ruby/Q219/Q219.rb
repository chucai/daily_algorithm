# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  hash_map = {}

  for i in (0..nums.size)
    if hash_map[num] != nil
      return true if i - hash_map[num] <= k
      hash_map[num] = i      
    else 
      hash_map[num] = i
    end
  end

  return false
end
