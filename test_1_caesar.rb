def caesar(text, number)
  
  puts "Enter phrase"
  text = gets.chomp

  puts "Enter cipher number"
  number = gets.chomp
  
  key = number.to_i % 26
  
  text.split("").each do |character|
    
    if character.match(/[A-Z]/)
      
      if character.ord + key > 90
        changed = (character.ord  - 26) + key
        print changed.chr
      elsif character.ord + key < 65
        changed = (character.ord + 26) + key
        print changed.chr 
      else
        changed = character.ord + key
        print changed.chr
      end
      
    elsif character.match(/[a-z]/)
    
      if character.ord + key > 122
        changed = (character.ord - 26) + key
        print changed.chr
      elsif character.ord + key < 97
        changed = (character.ord + 26) + key
        print changed.chr
      else
        changed = character.ord + key
        print changed.chr
      end
      
    else
      print character
    
    end
  end
end

caesar("Hello world", 1)
 