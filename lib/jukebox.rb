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

def list(array)
    array.each_with_index do |value, index|
        puts "#{index + 1}. #{value}"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def play(array)
    puts "Please enter a song name or number:"
    song = gets.strip

    array.each do |item|
        if item == song
            puts "Playing #{song}"
            return
        end
        if song.to_i > 0 && song.to_i < array.length
            puts "Playing #{array[song.to_i - 1]}"
            return
        else
            puts "Invalid input, please try again"
            return
        end
    end
end

def run(array)
    puts "Please enter a command:"
    input = gets.strip

    while input != "exit"
        if input == "help"
            help
        end
        if input == "list"
            list(array)
        end
        if input == "play"
            play(array)
        end
        puts "Please enter a command:"
        input = gets.strip
    end
        exit_jukebox
end
