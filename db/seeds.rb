# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "Destroying all users..."
# User.destroy_all

# puts "Destroying all favorites..."
# Favorite.destroy_all

# puts "Destroying all crowdnesses..."
# Crowdness.destroy_all

# puts "Destroying all spots..."
# Spot.destroy_all

puts "Starting to Seed..."

user1 = User.create(first_name: 'User_First_Name', last_name: 'User_Last_Name', email: 'user1@user.com', password: '123123')
user2 = User.create(first_name: 'User_First_Name', last_name: 'User_Last_Name', email: 'user2@user.com', password: '123123')
spot1 = Spot.create(name: 'Gero', address: 'Rua Haddock Lobo 1629 São Paulo SP Brasil', user_id: user1.id)
spot2 = Spot.create(name: 'Tordesilhas', address: 'Alameda Tiete 489 São Paulo SP Brasil', user_id: user1.id)
spot3 = Spot.create(name: 'Zucco', address: 'Rua Haddock Lobo 1416 São Paulo SP Brasil', user_id: user1.id)
spot4 = Spot.create(name: 'Chef Rouge', address: 'Rua Bela Cintra 2238 São Paulo SP Brasil', user_id: user1.id)
spot5 = Spot.create(name: 'Fasano', address: 'Rua Vitório Fasano 88 São Paulo SP Brasil', user_id: user1.id)
Spot.create(name: 'A Bela Cintra', address: 'Rua Bela Cintra 2325 São Paulo SP Brasil', user_id: user2.id)
Spot.create(name: 'Corrientes 348 Jardins', address: 'Rua Bela Cintra 2305 São Paulo SP Brasil', user_id: user2.id)
Spot.create(name: 'Serafina Jardins', address: 'Alameda Lorena 1705 São Paulo SP Brasil', user_id: user2.id)
Spot.create(name: 'Miró Gastronomia', address: 'Alameda Lorena 2101 São Paulo SP Brasil', user_id: user2.id)
Crowdness.create(user_id: user2.id, spot_id: spot1.id, level: rand(1..3), description: "bla bla bla bla")
Crowdness.create(user_id: user2.id, spot_id: spot2.id, level: rand(1..3), description: "bla bla bla bla")
Crowdness.create(user_id: user2.id, spot_id: spot3.id, level: rand(1..3), description: "bla bla bla bla")
Crowdness.create(user_id: user2.id, spot_id: spot4.id, level: rand(1..3), description: "bla bla bla bla")
Crowdness.create(user_id: user2.id, spot_id: spot5.id, level: rand(1..3), description: "bla bla bla bla")

puts "SEEDED!"
