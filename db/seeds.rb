# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom =     {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number:"007", category:"chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number:"00445588", category:"italian"}
hallmann =    {name: "Hallmann & Klee", address: "Berlin - NK", phone_number:"0049181819", category:"french"}
michelberger = {name: "Michelberger", address: "Berlin - FHAIN", phone_number:"0049", category:"french"}
belgium =     {name: "Beligum", address: "Amsterdam", phone_number:"00562533", category:"belgian"}

[dishoom, pizza_east, hallmann, michelberger, belgium].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
