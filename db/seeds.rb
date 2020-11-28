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

user = User.create(first_name: 'User_First_Name', last_name: 'User_Last_Name', email: 'user@user.com', password: '123123')
a = Spot.create(name: 'Gero', address: 'Rua Haddock Lobo 1629 São Paulo SP Brasil', user_id: user.id)
b = Spot.create(name: 'Tordesilhas', address: 'Alameda Tiete 489 São Paulo SP Brasil', user_id: user.id)
c = Spot.create(name: 'Zucco', address: 'Rua Haddock Lobo 1416 São Paulo SP Brasil', user_id: user.id)
d = Spot.create(name: 'Chef Rouge', address: 'Rua Bela Cintra 2238 São Paulo SP Brasil', user_id: user.id)
e = Spot.create(name: 'Fasano', address: 'Rua Vitório Fasano 88 São Paulo SP Brasil', user_id: user.id)
f = Spot.create(name: 'A Bela Cintra', address: 'Rua Bela Cintra 2325 São Paulo SP Brasil', user_id: user.id)
g = Spot.create(name: 'Corrientes 348 Jardins', address: 'Rua Bela Cintra 2305 São Paulo SP Brasil', user_id: user.id)
h = Spot.create(name: 'Serafina Jardins', address: 'Alameda Lorena 1705 São Paulo SP Brasil', user_id: user.id)
i = Spot.create(name: 'Miró Gastronomia', address: 'Alameda Lorena 2101 São Paulo SP Brasil', user_id: user.id)

puts "SEEDED!"
