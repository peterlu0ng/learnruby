require 'bcrypt'
#users

users = [
          {username: "peter", password: "password1"},
          {username: "luong", password: "password2"},
          {username: "john", password: "password3"},
          {username: "green", password: "password4"},
          {username: "red", password: "password5"},
]

#define password encryption
def create_hash_digest(password)
  BCrypt:: Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
            user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
end

new_users = create_secure_users(users)
puts new_users

def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
      return user_record
    end

  end
  "Credentials were not correct"
end

p authenticate_user("red", "passw123", new_users)
