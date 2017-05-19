def stock_picker(input)

	profits = []
	dates = Hash.new
	input.each do |price|

		x = -1
		
		input.count.times do

			if (x == -1 || x > input.index(price)) && input[x] - price > 0
				
				profits.push(input[x] - price)
				dates[input[x] - price] = "#{price} -> #{input[x]}"

				x += 1

			else
				x += 1
			end
			
		end 
	end
puts profits.sort[-1]
puts dates.fetch(profits.sort[-1])

end

stock_picker([6, 7, 10, 1, 9, 5])

