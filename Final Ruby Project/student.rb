require_relative "crud"

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last Name: #{@last_name}, Email Address: #{@email},
    Username: #{@username}, Password: #{@password}"
  end

end
peter = Student.new("peter", "luong","peter1", "peter@example.com", "pet")
fred = Student.new("fred", "doe","fred1", "fred@example.com", "fred1")


hashed_password = peter.create_hash_digest(peter.password)
puts hashed_password
