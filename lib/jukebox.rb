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
    puts" I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end


def play(songs)
    puts "Please enter a song name or number:"
    user_response = gets.strip

    songs.each_with_index do |song, index|
        song_number = index.to_i + 1
        if user_response.to_i == song_number
            puts "Playing #{song}"
            return song
        elsif user_response == song
            puts "Playing #{song}"
            return song
        end
    end
    puts "Invalid input, please try again."
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
    user_input = gets.strip.to_s

    while user_input != "exit"
        if user_input == "list"
            list(songs)
        elsif user_input == "play"
            play(songs)
        elsif user_input == "help"
            help
        end
        puts "Please enter a command:"
        user_input = gets.strip
    end
        exit_jukebox
    
end
