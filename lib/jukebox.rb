# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array_songs)
  array_songs.each_with_index do |element, index|
    puts "#{index.to_i + 1}. #{element} "
  end
end

def play(array_songs)
  puts "Please enter a song name or number:"
  song_Choice = gets.strip
  song_to_Index = song_Choice.to_i - 1

  if (0..array_songs.length) === song_to_Index
    puts "Playing #{findBySongIndex(array_songs, song_to_Index)}"
  elsif array_songs.include?(song_Choice)
    puts "Playing #{song_Choice}"
  else
    puts "Invalid input, please try again"
  end
end

def findBySongIndex(array_songs, choice)
  array_songs.each_with_index do |element, index|
    if index == choice
      return element
    end
  end
  return false
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip.downcase
  
  if input == 'list'
    list
  elsif input == 'help'
    help
  elsif input == 'play'
    play
  elsif input == 'exit'
    exit
  end
  
end