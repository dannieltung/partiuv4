# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all spots..."
Spot.destroy_all

puts "Destroying all favorites..."
Favorite.destroy_all

puts "Destroying all users..."
User.destroy_all

puts "Starting to Seed..."

user = User.create(first_name: 'User_First_Name', last_name: 'User_Last_Name', email: 'user@user.com', password: '123123')
Spot.create(address: 'Avenida Higienópolis 148 São Paulo Brasil', crowd_congestion: 3, user_id: user.id)
# Spot.create(address: 'Alameda Lorena, 600 São Paulo Brasil', crowd_congestion: 3, user_id: user.id)
# Spot.create(address: 'Alameda Lorena,1600 São Paulo Brasil', crowd_congestion: 4, user_id: user.id)
# Spot.create(address: 'Rua Augusta,1300 São Paulo Brasil', crowd_congestion: 4, user_id: user.id)
# Spot.create(address: 'Rua Jericó, 193 São Paulo Brasil', crowd_congestion: 5, user_id: user.id)
# Spot.create(address: 'Rua Oscar Freire, 300 São Paulo Brasil', crowd_congestion: 5, user_id: user.id)
# Spot.create(address: 'Rua Oscar Freire, 1200 São Paulo Brasil', crowd_congestion: 5, user_id: user.id)
# Spot.create(address: 'Rua Augusta, 2000 São Paulo Brasil', crowd_congestion: 2, user_id: user.id)
# Spot.create(address: 'Rua Augusta, 1800 São Paulo Brasil', crowd_congestion: 2, user_id: user.id)

Favorite.create(fav_spot: 'Alameda Lorena, 600 São Paulo Brasil', user_id: user.id)

puts "SEEDED!"
