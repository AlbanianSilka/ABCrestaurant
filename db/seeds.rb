# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Board.destroy_all
Dish.destroy_all

100.times do |index|
  Dish.create!(dish_name: Faker::Name.name,
               dish_price: Faker::Number.between(from: 1, to: 2000),
               category: Faker::Name.name,
               description: Faker::Lorem.sentence)
end

Board.create!([{
                 board_number: '1',
                 board_seats: 12,
                 booked: false,
                 floor: 1
               },
               {
                 board_number: '2',
                 board_seats: 6,
                 booked: false,
                 floor: 2
               },
               {
                 board_number: '3',
                 board_seats: 2,
                 booked: false,
                 floor: 3
               }])

p "Created #{Board.count} tables"
p "Created #{Dish.count} dishes"
