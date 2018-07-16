# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
if !User.any?
  User.create(email: 'test@test.com', password: 'password')
end
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
todo1 = Todo.create(title: "Study", description: "The next comming exam", status:"true")
todo2 = Todo.create(title: "Salon", description: "Hair appointment", status:"true")
todo3 = Todo.create(title: "School", description: "Pick up the kids from school", status:"true")
todo4 = Todo.create(title: "Store", description: "Bye the grocery", status:"true")
todo5 = Todo.create(title: "Gym", description: "Go to gym", status:"false")


user1 = User.create(email: "a@b.com", password: "123456", password_confirmation:"123456")
user2 = User.create(email: "d@b.com", password: "1234567", password_confirmation:"1234567")
user3 = User.create(email: "c@b.com", password: "12345678", password_confirmation:"12345678")
user4 = User.create(email: "g@b.com", password: "123456789", password_confirmation:"123456789")
user5 = User.create(email: "k@b.com", password: "1234567890", password_confirmation:"1234567890")
