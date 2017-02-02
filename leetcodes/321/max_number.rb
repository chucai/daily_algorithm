def max_number(nums1, nums2, k)
  @ans = nil
  result = []
  v1 = []
  v2 = []
  p1 = 0
  p2 = 0
  dfs(nums1, nums2, v1, v2, p1, p2, k, result)
  return @ans
end

def dfs(nums1, nums2, v1, v2, p1, p2, k, result)
  if @ans
    return
  end

  if k == 0
    @ans = result.clone
    return
  end

  if k < 0
    return
  end


  (nums1.length - p1 + nums2.length - p2).times do
    max_num = -1
    i1 = p1
    i2 = p2

    used_i1 = -1
    while i1 < nums1.length
      if v1[i1].nil? && max_num < nums1[i1]
        max_num = nums1[i1]
        v1[i1] = true

        if used_i1 != -1
          v1[used_i1] = nil
        end
        used_i1 = i1
      end
      i1 += 1
    end

    used_i2 = -1
    while i2 < nums2.length
      if v2[i2].nil? && max_num < nums2[i2]
        max_num = nums2[i2]
        v2[i2] = true

        if used_i1 != -1
          v1[used_i1] = nil
          used_i1 = -1
        end

        if used_i2 != -1
          v2[used_i2] = nil
        end
        used_i2 = i2
      end
      i2 += 1
    end


    if used_i1 != -1
      result << nums1[used_i1]
      dfs(nums1, nums2, v1, v2, used_i1 + 1, p2, k-1, result)
      k += 1
      result.pop
    elsif used_i2 != -1
      result << nums2[used_i2]
      dfs(nums1, nums2, v1, v2, p1, used_i2 + 1, k-1, result)
      k += 1
      result.pop
    end

  end

  return
end

nums1 = [3,4,6,5]
nums2 = [9,1,2,5,8,3]
k = 6
puts max_number(nums1, nums2, k).inspect
