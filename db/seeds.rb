# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#standard = Room.create! name: "Standard Apartment", price_low: 79, price_normal: 89, price_high: 109, content1: "test", content2: "test"

@standar = Room.find(1)

#Secondlist.create! text: "TV", room: @standar

#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Accomodation.create! name: "Apto 1", reserved: :false, room_id: 1