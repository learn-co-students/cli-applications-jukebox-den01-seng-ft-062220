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

def list(x)
  i = 0
  while i < x.length
    puts "#{i + 1}. #{x[i]}"
    i += 1
  end
end

def play(x)
  puts "Please enter a song name or number:"
  i = gets.chomp
  if i.to_i.between?(1, 9)
    puts "Playing #{x[i.to_i-1]}"
  elsif x.include?(i)
    puts "Playing #{i}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(x)
  puts "Please enter a command:"
  user_input = gets.chomp
  if user_input == "exit"
    exit_jukebox
  elsif user_input == "list"
    list(x)
  elsif user_input == "play"
    play(x)
  elsif user_input == "help"
    help
  end
end

# run(songs)


