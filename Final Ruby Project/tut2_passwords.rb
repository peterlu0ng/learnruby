require 'bcrypt'

my_password = BCrypt:: Password.create("my password") #creating the hashed version of my password
my_password_1 = BCrypt:: Password.create("my password")
my_password_2 = BCrypt:: Password.create("my password")

puts my_password
puts my_password_1
puts my_password_2

puts my_password == "my password"

my_password = BCrypt::Password.new("$2a$12$Eo2uSbID5Sove9RV3eQJLe1uG9k5p66.hQ5n6tIv5LGYIRXxkCuqa")
puts my_password == "my password"     #=> true
# my_password == "not my password" #=> false
