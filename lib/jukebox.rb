require 'pry'
# Add your code here

# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  song_choice = gets.strip
  # if they enter a valid number
  # binding.pry
  if (song_choice.to_i != 0) && song_choice.to_i <= songs_array.length
    puts "Playing #{songs_array[song_choice.to_i - 1]}"
    
  # if they enter a valid song name
  # binding.pry
  elsif songs_array.include?(song_choice)
    puts "Playing #{song_choice}"
  else
    puts "Invalid input, please try again"
  end
    # puts song_choice

  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  while true do
    puts "Please enter a command:"
    action = gets.chomp
  
      # binding.pry
  
    case action
    
    when "help"
      help
    
    when "list"
      list(songs_array)
      
    when "play"
      play(songs_array)
      
    when "exit"
      exit_jukebox
      break
      # return
    else
      puts "Invalid entry"
    end
  end
end

# puts "Please enter a command:"
#     response = gets.chomp
#     case response
#     when "exit"
#       exit_jukebox
#       break
#     when "play"
#       play(songs)
#     when "help"
#       help
#     when "list"
#       list(songs)
#     else
#       puts "Invalid entry"
#     end

# play(songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ])

