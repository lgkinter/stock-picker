def stock_picker(stock_prices)
  i,j = 0
  buy_day, sell_day, profit = 0,0,0
  stock_prices.each do |stock|
    j = i+1
    while j <= stock_prices.length - 1
      if stock_prices[j] - stock > profit
        buy_day = i
        sell_day = j
        profit = stock_prices[j] - stock
      end
      j += 1
    end
    i += 1
  end
  puts "The best day to buy is day #{buy_day} and the best day to sell is day
  #{sell_day} for a profit of $#{stock_prices[sell_day]} - $#{stock_prices[buy_day]} = $#{profit}."
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
