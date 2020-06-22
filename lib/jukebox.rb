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

def play (songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  valid_song = false
  songs.each do |song_name|
    if input == song_name || input.to_i == songs.index(song_name) + 1
      puts "Playing #{song_name}"
      valid_song = true
    end
   end
    if valid_song == false
      puts "Invalid input, please try again"
    end
end



def list(songs)
  songs.each_with_index do |name, number|
   number = number + 1
   puts number.to_s + ". " + name
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  puts "Please enter a command:"
  answer = gets.strip
  while answer !=  "exit" do

    if answer == "help"
      help
    end
  
    if answer == "list"
      list(songs)
    end
  
    if answer == "play"
     play(songs)
    end
   puts "Please enter a command:"
   answer = gets.strip
  end
  exit_jukebox
end  

