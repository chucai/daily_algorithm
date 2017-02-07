# Not correct. Next one first, come back later.

# @param {Integer[]} prices
# @return {Integer}
#
# def max_profit(prices)
#   bought_price = prices[0]
#   lowest_price = prices[0]
#   max_profit = 0
#   for price in prices
#     if price < lowest_price
#       lowest_price = price
#       puts "lowest_price:" + lowest_price.to_s
#     end
#     cur_price = price
#     cur_profit = cur_price - bought_price
#     puts "cur_profit:" + cur_profit.to_s
#     potential_profit = cur_price - lowest_price
#     puts "potential_profit:" + potential_profit.to_s
#     if cur_profit > max_profit
#       max_profit = cur_profit
#     end
#     if potential_profit > max_profit
#       max_profit = potential_profit 
#     end
#   end 
#   return max_profit
# end
#

def max_profit(prices)
  max_index = 0
  min_index = 0
  max_value = prices[0]
  min_value = prices[0]
  index = -1

  for price in prices
    index = index + 1

    if price > max_value
      max_value = price
      max_index = index
    end

    if price < min_value
      min_value = price
      min_index = index
    end

  end

  if max_index >= min_index
    max_profit = max_value - min_value
  else
    left_min_value = price[0]
    right_min_value = price[max_index]
    for i in (0..max_index)
      if prices[i]
    end  

  end

end

puts max_profit([2,1,4])
