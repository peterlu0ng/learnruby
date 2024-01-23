#first project on Odin Project
# https://www.theodinproject.com/lessons/ruby-caesar-cipher

# strings arrays & hashes

# example
# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"



# array

# create method for caesar_cipher

def caesar_cipher (string, factor)
    # user_input.chars.to_a
    alphabet = ("a".."z").to_a
    p alphabet
    big_alphabet = alphabet.join().upcase
    puts big_alphabet

end

# need to cut up users input into indivdual strings
# assign each indivdual letter to a integer value
# increment each integer value by shift factor


# implementation

puts "Enter your the text you want to be encrypted"
user_input = gets.chomp
puts "Enter the shift factor you want the letters to be shifted by"
shift_factor = gets.chomp
encrypted_string = caesar_cipher(user_input, shift_factor)
# puts encrypted_string

# puts "The encrypted string is #{encrypted_string}"
