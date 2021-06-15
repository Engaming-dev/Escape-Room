puts "           -----ESCAPE ROOM-----                  "
puts "           -----ROOM 1-----                  "
puts "Welcome to Room 1. Your objective is to escape the room. there are puzzles everywhere! Use your mind to crack them and escape the room! Room 1 is a tutorial."
puts "Your main way to escape is to find the key."
puts "----->" "{}"
puts "This is the keyhole." 
puts "the code is 6 digits long. You can find it somewhere hidden. You will need to find it to find the key. Notice that other rooms might have other measures to not allow you to access the key, and that the code in other rooms might be longer."
puts "Lets check the drawer."
puts "CODE: 139786"
puts "Now that you know the code, lets go enter it in."
puts "ENTER CODE:"
code = gets.chomp
if code == "139786"
  puts "ACCESS GRANTED."
  puts "You found a key! It works for this keyhole: {}"
  key1 = "{}"
  puts "keys are keyhole-specific. if the keyhole doesnt match the key, it wont open the door. You can have multiple keys with you."
  puts "Use the key?"
 answer = gets.chomp.capitalize
 if answer == "Yes"
   if key1 =="{}"
    puts "The door opens."
    puts "You Have Escaped!"
    points = 1
    puts "You have completed the tutorial! As a result, you have earned a point. You will unlock other rooms with points. Every room you beat you will earn a point. When you lose, your points will act as your high score."
   else
     puts "The key did not work."
   end
  elsif answer == "No" 
    "Ok. You didnt try."
  end
else 
  puts "ACCESS DENIED. CODE INCORRECT."
  puts "You have failed! Try again."
end
if points == 1
  puts "      ------ROOM 2------     "
  puts "Congratulations on making to room 2!"
  puts "----> [;]"
  puts "Do you want to inspect for clues?"
  answer = gets.chomp.capitalize
  if answer == "Yes"
    puts "You inspect for clues."
    puts "You find a clue to the code!"
    puts "THE CODE: The first triple-digit number, the last quadruple-digit number, the first double-digit number"
    puts "Can you figure out the code? Type it in!"
    code = gets.chomp
    if code == "100999910"
      puts "ACCESS GRANTED."
      puts "You found a key! It works for this keyhole:[;]"
      puts "Do you want to use the key?" 
      answer = gets.chomp.capitalize
      if answer == "Yes"
        puts "The door opens."
        puts "You Have Escaped!"
        points = 2
        puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"
        puts "More rooms coming soon!"
      else
        puts "You dont use the key."
        puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"
      end
  else
    puts "You dont inspect the room, and remain clueless."
    puts "Your score: #{points}. If you havent made it farther, you can publish this as a high score!"  
  end
end end