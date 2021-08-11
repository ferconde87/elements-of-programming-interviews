def buy_and_sell_a_stock_once(prices)
  max_profit = 0.0
  buy_price = Float::INFINITY
  for price in prices do
    if price < buy_price
      buy_price = price
    else
      max_profit = [max_profit, price - buy_price].max
    end
  end
  max_profit
end

def buy_and_sell_stock_once(prices)
  min_price_so_far, max_profit = Float::INFINITY, 0.0
  for price in prices do
    max_profit_sell_today = price - min_price_so_far
    max_profit = [max_profit, max_profit_sell_today].max
    min_price_so_far = [min_price_so_far, price].min
  end
  max_profit
end

a = [310, 315, 275, 295, 260, 270, 290, 230, 255, 250]

puts(buy_and_sell_a_stock_once(a))
puts(buy_and_sell_stock_once(a))

