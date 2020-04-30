# Add your code here
def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.strip
  if selection =~ /\A\d+\z/ && selection.to_i.between?(0, songs.length)
    puts "Now playing #{songs[selection.to_i - 1]}"
  elsif songs.include?(selection)
    puts "Now playing #{selection}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  case command
  when 'play'
    play
  when 'exit'
    exit
  when 'help'
    help
  when 'list'
    list
  end
end
