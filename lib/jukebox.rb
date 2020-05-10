# Add your code here
# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)

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

def list(arr)
    arr.each_with_index do |val, index|
        puts "#{index + 1}. #{val}"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def play(arr)
    puts "Please enter a song name or number:"
    song_input = gets.strip

    arr.each do |item|
        if item == song_input
            puts "Playing #{song_input}"
            return
        end
        if song_input.to_i > 0 && song_input.to_i < arr.length
            puts "Playing #{arr[song_input.to_i - 1]}"
            return
        else
            puts "Invalid input, please try again"
            return
        end 
    end
end

def run(arr)
    puts "Please enter a command:"
    input = gets.strip

    while input != "exit"
        if input == "help"
            help
        end
        if input == "list"
            list(arr)
        end
        if input == "play"
            play(arr)
        end
        puts "Please enter a command:"
        input = gets.strip
    end
        exit_jukebox
end

# run(songs)
