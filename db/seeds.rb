# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

puts "Cleared User db"


first_user = User.new(first_name: "Florencia", last_name: "Tarocco",email: "email1@hotmail.com",password: 123456 )
first_user.save!

second_user = User.new(first_name: "Peder", last_name: "Frang",email: "email2@hotmail.com",password: 123456 )
second_user.save!

third_user = User.new(first_name: "Niklas", last_name: "Fridman",email: "email3@hotmail.com",password: 123456 )
third_user.save!

fourth_user = User.new(first_name: "Anton", last_name: "Brinckmann",email: "email4@hotmail.com",password:  123456 )
fourth_user.save!

fifth_user = User.new(first_name: "Andre", last_name:"Ferrer" ,email: "email5@hotmail.com",password: 123456 )
fifth_user.save!

puts "created 5 users"

Vehicle.destroy_all
puts " Cleared Vehicle db"

CATEGORY_ARRAY = ["Elevator", "Car", "Motorcycle", "Scooter", "Giraffe", "Truck", "Tanks", "Private Jet"]
first_vehicle = Vehicle.new(name: "Tesla", description: "X", price: 10, category: CATEGORY_ARRAY.sample, address: 'London Tower' )
first_vehicle.user_id = second_user.id
first_vehicle.save!

second_vehicle = Vehicle.new(name: "BMW", description: "Fancy BMW", price: 100000, category: CATEGORY_ARRAY.sample, address: 'Big Ben')
second_vehicle.user_id = first_user.id
second_vehicle.save!

third_vehicle = Vehicle.new(name: "Toyota", description: "Corolla", price: 17, category: CATEGORY_ARRAY.sample, address: 'Eiffel Tower' )
third_vehicle.user_id = fifth_user.id
third_vehicle.save!

fourth_vehicle = Vehicle.new(name: "Rolls Royce", description: "20 yrs old", price: 15, category: CATEGORY_ARRAY.sample, address: 'Parc Guell' )
fourth_vehicle.user_id = fourth_user.id
fourth_vehicle.save!

fifth_vehicle = Vehicle.new(name: "Porsche", description:"Cool Porsche" , price: 20, category: CATEGORY_ARRAY.sample, address: 'Rome' )
fifth_vehicle.user_id = fourth_user.id
fifth_vehicle.save!
puts "created 5 vehicles"

Booking.destroy_all
puts "clear booking DB"
# first_booking = Booking.new(booking_from: Date.new(2020,2,3), booking_to: Date.new(2020,2,10), status: "Pending")
# first_booking.vehicle_id = second_vehicle.id
# first_booking.user_id = fifth_user.id
# first_booking.save!

# second_booking = Booking.new(booking_from: Date.new(2020,2,3), booking_to: Date.new(2020,2,10), status: "Pending")
# second_booking.vehicle_id = fifth_vehicle.id
# second_booking.user_id = second_user.id
# second_booking.save!

# third_booking = Booking.new(booking_from: Date.new(2020,2,3), booking_to: Date.new(2020,2,10), status: "Pending")
# third_booking.vehicle_id = second_vehicle.id
# third_booking.user_id = third_user.id
# third_booking.save!

# fourth_booking = Booking.new(booking_from: Date.new(2020,2,3), booking_to: Date.new(2020,2,10), status: "Pending")
# fourth_booking.vehicle_id = third_vehicle.id
# fourth_booking.user_id = fourth_user.id
# fourth_booking.save!

# fifth_booking = Booking.new(booking_from: Date.new(2020,2,3), booking_to: Date.new(2020,2,10), status: "Pending")
# fifth_booking.vehicle_id = fourth_vehicle.id
# fifth_booking.user_id = second_user.id
# fifth_booking.save!

# fifth_booking = Booking.new(booking_from: Date.new(2020,2,3), booking_to: Date.new(2020,2,10), status: "Pending")
# fifth_booking.vehicle_id = fourth_vehicle.id
# fifth_booking.user_id = first_user.id
# fifth_booking.save!

# puts "Created 6 bookings"


puts "ALL DONE WITH SEEDS"
