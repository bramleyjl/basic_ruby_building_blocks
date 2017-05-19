dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, array)
	
	counter = Hash.new(0)

	array.each do |entry|
		
		text.split(" ").each do |word|
			counter[entry] += 1 if word.include? entry
		end

	end
	puts counter
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)