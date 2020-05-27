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

def list(songs)
  songs.each_with_index do |element, index|
    puts "#{index + 1}. #{element}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if songs.include? input
    puts "Playing #{input}"
  elsif input.to_i.between?(1, songs.length)
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  case input
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
  when "help"
    help
  end
      
      
end

