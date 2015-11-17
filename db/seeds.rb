require 'faker'

# Create Users
5.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )

  user.save!
end

mak = User.create!(
  name: 'Mak Pande',
  email: 'makpande2015@gmail.com',
  password: 'helloworld'
)


mak.save!

users = User.all
puts "#{User.count} users created"

5.times do
  List.create!(
  users: users.sample,
  name: Faker::Lorem.sentence
  )
end
lists = List.all

25.times do
  Item.create!(
    lists: lists.sample,
    name: Faker::Lorem.sentence,
  )
end
items = Item.all

puts "#{Item.count} items created"

puts "Seed finished"
