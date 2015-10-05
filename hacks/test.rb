require "pry"


def get_word
  arr = ["cat", "leg", "pig", "cup", "bell", "come"]
  word = arr.sample.downcase.strip
  return word
end

def getchar                                       # Takes input from the player and returns the first character.                
  input = gets.chop.downcase.strip
  return input[0].strip
end

def valid?(char, word)
   word.include?(char) 
end

def quit_game?(answer)
  answer ? true : false 
end

 
 puts word = get_word
 val = true 
 count = 5
 bad_guess = ''
while ( val && count > 0)  do 

  if count > 0 
    
    c = getchar
    puts " life_line Left: #{count}"
    
    if word.length == 0
      puts "You Win!"
      val = false
    
      # check if input char exit in word
      # and that character from the array
    elsif valid?(c, word) && word.length > 0 
      word.delete!(c)
      puts word

      # prints wrong Guess
    else 
      bad_guess << " #{c}"
      puts "WRONG GUESS: #{bad_guess}"
    end 
    
   # if ( c == 'Q'.downcase)
    #  puts "You Quit"
    #  val = false 

    #elsif ( c == 'S'.downcase)
    #  puts "Saving......         done"
    # end

    count -= 1
    
  end 

end    # closes the while loop


