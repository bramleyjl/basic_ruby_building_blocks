def stock_picker(input)

	profits = []
	dates = Hash.new

	input.each do |price|
		x = -1	
		input.count.times do
			if (x == -1 || x > input.index(price)) && input[x] - price > 0
				profits.push(input[x] - price)
				dates[input[x] - price] = [price, input[x]]
				x += 1
			else
				x += 1
			end		
		end	
	end

puts "Profit: $#{profits.sort[-1]}"
puts "Buy at $#{dates.sort[-1][-1][0]}"
puts "Sell at $#{dates.sort[-1][-1][-1]}"

end

stock_picker([6, 7, 21, 1, 10, 17])

