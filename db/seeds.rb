# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all users..."
User.destroy_all

puts "Starting to Seed..."

1.times do
  user = User.create(
    first_name: "John",
    last_name: "Wick",
    email: "john@wick.com",
    password: "123123"
  )
end

puts "SEEDED!"
