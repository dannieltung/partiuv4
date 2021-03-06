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
spot1 = Spot.create(name: 'Getulio Restaurante', address: 'Rua Irai 43 Belo Horizonte BH Brasil', user_id: user1.id)
spot2 = Spot.create(name: 'Verdinho Restaurante', address: 'Avenida Consul Antonio Cadar 122 Belo Horizonte BH Brasil', user_id: user1.id)
spot3 = Spot.create(name: 'Projeto Sabor São Bento', address: 'Avenida Consul Antonio Cadar 127 Belo Horizonte BH Brasil', user_id: user1.id)
spot4 = Spot.create(name: 'Restaurante Buella', address: 'Rua Guaicui 35 Belo Horizonte BH Brasil', user_id: user1.id)
spot5 = Spot.create(name: 'Cheiro Verde Restaurante', address: 'Avenida Prudente de Morais 599 Belo Horizonte BH Brasil', user_id: user1.id)
Spot.create(name: 'Wäls Gastropub', address: 'Rua Levindo Lopes 358 Belo Horizonte BH Brasil', user_id: user2.id)
Spot.create(name: 'Redentor Bar', address: 'Rua Fernandes Tourinho 500 Belo Horizonte BH Brasil', user_id: user2.id)
Spot.create(name: 'Tize bar e Butequim', address: 'Rua Curitiba 2205 Belo Horizonte BH Brasil', user_id: user2.id)
Spot.create(name: 'Juramento 202 - Cervejaria Viela', address: 'Rua Juramento 202 Belo Horizonte BH Brasil', user_id: user2.id)
Crowdness.create(user_id: user2.id, spot_id: spot1.id, level: rand(1..3), description: "bla bla bla bla")
Crowdness.create(user_id: user2.id, spot_id: spot2.id, level: rand(1..3), description: "bla bla bla bla")
Crowdness.create(user_id: user2.id, spot_id: spot3.id, level: rand(1..3), description: "bla bla bla bla")
Crowdness.create(user_id: user2.id, spot_id: spot4.id, level: rand(1..3), description: "bla bla bla bla")
Crowdness.create(user_id: user2.id, spot_id: spot5.id, level: rand(1..3), description: "bla bla bla bla")

puts "SEEDED!"
