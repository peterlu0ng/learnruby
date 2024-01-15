class Student

  attr_accessor :first_name, :last_name, :email, :username

    def initialize (firstname, lastname, email, username, password)
      @first_name = firstname
      @last_name = lastname
      @email = email
      @username = username
      @password = password
    end

    #setter
    # def first_name=(name)
    #     @first_name = name
    # end
    # #getter
    # def first_name
    #     @first_name
    # end


    def to_s
      "First name: #{@first_name}, Last Name: #{@last_name}, Email Address: #{@email},
      Username: #{@username}, Password: #{@password}"
    end
end

# peter = Student.new
# peter.first_name = "peter"
# peter.last_name = "gya"
# peter.email = "pong@1.com"
# puts peter.first_name
# puts peter.last_name
# puts peter.email
# puts peter.username

peter = Student.new("peter", "luong","peter@example.com", "peter1", "pet")
john = Student.new("john", "doe","john@example.com", "john1", "johnn")

puts peter
puts john
peter.last_name = john.last_name
puts "peter is altered"
puts peter
