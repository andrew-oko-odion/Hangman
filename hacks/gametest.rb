require "pry"

#binding.pry


def get_word
  arr = ["hello", "world", "this", "carrot", "smith", "welcome"]
  word = arr.sample.downcase.strip 
  return word
end


def getchar                                       # Takes input from the player and returns the first character.               
  input = gets.chop.downcase.strip
  return input[0]
end



def valid?(getchar, word) 
  #word.uniq!
#  binding.pry

  if ( word.include?(getchar) == true && word != "" )
    word.delete(getchar)
    return true

  elsif ( word.include?(getchar) == false && word != "" )
    return true

  elsif (word == "")
    return false
  end

end


puts word = get_word
#valid?(getchar,word) 
count = 6
val = true 

while (val && count > 0) do 

  if valid?(getchar, word)
    puts "\tMissed: #{getchar}"
    
  else
    puts "You Win"
    val = false

  end

  count -= 1
end

#count = 4
#val = true
#puts word = get_word 

#uni_word = word
#uni_word.uniq!

#while(count >= 0 && val) do
#  binding.pry
#  puts name = "o"
#  c  = getchar
  #if valid?(c, word)
#  if ( c == 'o')
#   puts "You win"
#    val = false

#  else 
#    puts "try again"
#  end
  #else
   # puts "You won the Game Genius!" 
   # val = false
  #puts "hello"
  #end
# count -= 1

#end 