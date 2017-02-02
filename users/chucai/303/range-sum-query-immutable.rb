class NumArray

    # Initialize your data structure here.
    # @param {Integer[]} nums
    def initialize(nums)
      @nums = nums
      @cache = []
      i = 0
      while i < nums.length
        if i == 0
          @cache[i] = nums[i]
        else
          @cache[i] = nums[i] + @cache[i-1]
        end
        i += 1
      end
    end

    # @param {Integer} i
    # @param {Integer} j
    # @return {Integer}
    def sum_range(i, j)
      if i == 0
        @cache[j]
      else
        @cache[j] - @cache[i-1]
      end
    end

    def search(nums, i)
      return @cache[i] if @cache[i]
      @cache[i] = if i == 0
                    nums[0]
                  else
                    nums[i] + search(nums, i-1)
                  end
      return @cache[i]
    end
end

# Your NumArray object will be instantiated and called as such:
nums = [-2,0,3,-5,2,-1]
puts nums.inspect
num_array = NumArray.new(nums)
puts num_array.sum_range(2, 5)
