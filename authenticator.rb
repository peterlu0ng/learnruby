
#initial data
users = [
          {username: "peter", password: "password1"},
          {username: "luong", password: "password2"},
          {username: "john", password: "password3"},
          {username: "green", password: "password4"},
          {username: "red", password: "password5"},
]


# initial execution
puts "Welcome to the authenticator"
25.times{print "-"}
puts
puts "This program will take input from the user and compare the password"
puts "If password is correct, you will get back the user object"

# authentication method. takes users input from below and compares it to the user hash

def auth_user(user_input, pass_input, list_of_users)
  list_of_users.each do|user_record|
    if user_record[:username] == user_input && user_record[:password] == pass_input
           return user_record
    end
  end
  "Credentials were not correct"
end

#while loop. Continues to ask for user input 3 times until attempts reach 4

attempts = 1
while attempts < 4
  print "Username: "
  user_input = gets.chomp
  print "Password: "
  pass_input = gets.chomp
  authentication = auth_user(user_input, pass_input, users)
  puts authentication
  puts "Press n to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
  if attempts == 4
        puts "Number of attempts exceeded."
  end
end
