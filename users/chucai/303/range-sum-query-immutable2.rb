class NumArray

    # Initialize your data structure here.
    # @param {Integer[]} nums
    def initialize(nums)
      @nums = nums
      n = nums.length
      @cache = Array.new(n) { Array.new(n) }
      (0...n).each do |i|
        (i...n).each do |j|
          search(i, j)
        end
      end
    end

    # @param {Integer} i
    # @param {Integer} j
    # @return {Integer}
    def sum_range(i, j)
      @cache[i][j]
    end

    def search(i,j)
      return @cache[i][j] if @cache[i][j]

      @cache[i][j] = if i == j
                       @nums[i]
                     else
                       @nums[j] + search(i, j - 1)
                     end

      return @cache[i][j]
    end
end

# Your NumArray object will be instantiated and called as such:
#nums = [-2, 0, 3, -5, 2, -1]
#puts nums.inspect
#num_array = NumArray.new(nums)
#puts num_array.sum_range(0, 1)
#puts num_array.sum_range(0, 2)

#nums = [-1]
#num_array = NumArray.new(nums)
#puts num_array.sum_range(0,0)
