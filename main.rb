puts "           -----ESCAPE ROOM-----                  "
puts "           -----ROOM 1-----                  "
puts "Welcome to Room 1. Your objective is to escape the room. there are puzzles everywhere! Use your mind to crack them and escape the room! Room 1 is a tutorial."
puts "Your main way to escape is to find the key."
sleep 3
puts "----->" "{}"
puts "This is the keyhole." 
puts "the code is 6 digits long. You can find it somewhere hidden. You will need to find it to find the key. Notice that other rooms might have other measures to not allow you to access the key, and that the code in other rooms might be longer."
sleep 3
puts "Lets check the drawer."
sleep 1
puts "CODE: 139786"
puts "Now that you know the code, lets go enter it in."
sleep 2
puts "ENTER CODE:"
code = gets.chomp
if code == "139786"
  puts "ACCESS GRANTED."
  puts "You found a key! It works for this keyhole: {}"
  key1 = "{}"
  sleep 3
  puts "keys are keyhole-specific. if the keyhole doesnt match the key, it wont open the door. You can have multiple keys with you."
  sleep 2
  puts "Use the key?"
 answer = gets.chomp.capitalize
 if answer == "Yes"
   if key1 =="{}"
     puts "The door opens."
     puts "You Have Escaped!"
     sleep 2
     points = 1
     puts "You have completed the tutorial! As a result, you have earned a point. You will unlock other rooms with points. Every room you beat you will earn a point. When you lose, your points will act as your high score."
   else
     puts "The key did not work."
   end
  else
    puts "You didnt try to open the door."
    puts "your score: 0. if you havent made it further, you can publish this as a high score!"
  end
else 
  puts "ACCESS DENIED. CODE INCORRECT."
  puts "You have failed! Try again."
end
if points == 1
  puts "      ------ROOM 2------     "
  puts "Congratulations on making to room 2!"
  puts "----> [;]"
  sleep 2
  puts "Do you want to inspect for clues?"
  answer = gets.chomp.capitalize
  if answer == "Yes"
    puts "You inspect for clues."
    puts "You find a clue to the code!"
    puts "THE CODE: The first triple-digit number, the last quadruple-digit number, the first double-digit number"
    sleep 3
    puts "Can you figure out the code? Type it in!"
    code = gets.chomp
    if code == "100999910"
      puts "ACCESS GRANTED."
      puts "You found a key! It works for this keyhole:[;]"
      sleep 2
      puts "Do you want to use the key?" 
      answer = gets.chomp.capitalize
      if answer == "Yes"
        puts "The door opens."
        sleep 1
        puts "You Have Escaped!"
        points = 2
      else
        puts "You dont use the key."
        puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"
      end
    else
      puts "ACCES DENIED. CODE INCORRECT."
    end
  else
    puts "You dont inspect the room, and remain clueless."
    puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"  
  end
end 
if points == 2
  puts "     ------ROOM 3------     "
  puts "You inspect for more clues."
  puts "You find nothing. Where to inspect more?"
  sleep 2
  puts "The kitchen or under the TV?"
  answer = gets.chomp.downcase
  if answer == "tv"
    puts "You inspect the tv, and find something!"
    puts "Check the kitchen, And you will find 'something', but going to the balcony, you 'wont' find anything."
    sleep 2
    puts "Where should we check? the balcony or the kitchen?"
    answer = gets.chomp.downcase
    if answer == "balcony"
      puts "Look!"
      puts "You found something!"
      puts "The TIME: 15:67"
      sleep 2
      puts "Hmmm..."
      puts "Do you want to type in the code?"
      answer = gets.chomp.downcase
      if answer == "yes"
        puts "ENTER CODE:"
        code = gets.chomp
        if code == "1567"
          puts "You Escaped!"
          sleep 2
          puts "Not all rooms need a key to escape."
          points = 3
        else
          puts "ACCESS DENIED. CODE INCORRECT."
          puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"
        end
      else
        puts "You dont try and look for clues."
        puts "You dont find any clues."
        puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"
      end
    else
      puts "You found nothing."
      puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"
    end
  else
   puts "You inspect the kitchen, but find nothing."
   puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"
  end
else
  puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"
end 
if points == 3
  puts "          -------ROOM 4-------           "
  sleep 2
  puts "You inspect the keyhole."
  sleep 1
  puts "-----> {'}"
  sleep 1
  puts "Where to search? The bedroom or bathroom?"
  answer = gets.chomp.downcase
  if answer == "kitchen"
    puts "You inspect the kitchen, and find a key!"
    puts "It works for this keyhole: {:}"
    sleep 2
    puts "Keep the key for further use?"
    puts "Keys can be kept and used in other levels, if the key's keyhole doesnt match the level's door."
    answer = gets.chomp.downcase
    if answer == "yes"
      key1 = "{:}"
    end
    puts "Now, should we go to the bathroom or the living room?"
    answer = gets.chomp.downcase
    if answer == "bathroom"
      puts "You find nothing in the bathroom."
      puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"
    else
      puts "You find a note in the living room!"
      puts "The first of july, the last of october, the beginning of the winter."
      sleep 3
      puts "Now enter the code:"
      code = gets.chomp.to_i
      if code == 1731102112 || 7110311221
        puts "ACCESS GRANTED." 
        puts "You escaped!"
        sleep 2
        puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"
        puts "More rooms coming soon!"
      else 
        puts "ACCESS DENIED. CODE INCORRECT."
        puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"
      end
    end
  else
    puts "You find nothing in the bathroom."
    puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"
  end
end
