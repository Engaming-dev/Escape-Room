puts "           -----ESCAPE ROOM-----                  "
puts "           -----ROOM 1-----                  "
puts "Welcome to Room 1. Your objective is to escape the room. there are puzzles everywhere! Use your mind to crack them and escape the room! Room 1 is a tutorial."
puts "Your main way to escape is to find the key."
puts "----->" "{}"
puts "This is the keyhole." 
puts "the code is 6 digits long. You can find it somewhere hidden. You will need to find it to find the key. Notice that other rooms might have other measures to not allow you to access the key."
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
    puts "More rooms coming soon!"
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