def help
puts " I accept the following commands:"
puts " - help : displays this help message"
puts " - list : displays a list of songs you can play"
puts " - play : lets you choose a song to play"
puts " - exit : exits this program"
end

def list(arr)
  arr.each_with_index do |val, index |
    puts "#{index +1}. #{val}"
  end
end


def play(arr)
  numbered_songs = [];
  puts "Please enter a song name or number:"
  song_to_play = gets.strip
  arr.each_with_index do |val, ind|
    if (song_to_play == val) 
      puts "Playing #{song_to_play}"
      return
    end
    song = song_to_play.to_i 
    if (song> 0 && song < 10)
      puts "Playing #{arr[song-1]}"
      return
    end
  end
  puts "Invalid input, please try again"
end


def exit_jukebox  
  puts "Goodbye"
end


def run(songs) 
command = nil
while command != 'exit'
  puts "Please enter a command:"
  command = gets.strip
case command 

when "play"
 play(songs)

when "list"
list(songs)

when "help"
  help 
end
end
exit_jukebox
end