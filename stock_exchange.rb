# Write an efficient function that takes stock_prices_yesterday and returns the best profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.

# For example:

#   stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

# get_max_profit(stock_prices_yesterday)
# # returns 6 (buying for $5 and selling for $11)

# No "shorting"—you must buy before you sell. You may not buy and sell in the same time step (at least 1 minute must pass).

stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

def get_max_profit(stock_prices_yesterday)
  biggest_gain = 0
  i = 0
  while i < stock_prices_yesterday.length - 1
    i += 1
    j = i + 1
    while j < stock_prices_yesterday.length
      if (stock_prices_yesterday[i] < stock_prices_yesterday[j]) &&
         (stock_prices_yesterday[j] - stock_prices_yesterday[i] > biggest_gain)
        biggest_gain = stock_prices_yesterday[j] - stock_prices_yesterday[i]
      end
      j += 1
    end
  end
  p biggest_gain
end

get_max_profit(stock_prices_yesterday)