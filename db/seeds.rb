# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
guy_savoy = { name: "Guy Savoy", address: "Hotel de la Monnaie", phone_number: '02 98 04 36 71', category: 'french' }
judy = { name: "Chez Judy", address: "120 rue d' Assas", phone_number: '03 98 04 36 71', category: 'french' }
marco_polo = { name: "Marco Polo", address: "Carrefour de l'Odeon", phone_number: '04 98 04 36 71', category: 'italian' }
sagan = { name: "Sagan", address: "25 rue Madame", phone_number: '04 98 04 36 71', category: 'japanese' }
vong = { name: "Chez Vong", address: "10 rue de la Grande-Truanderie", phone_number: '05 98 04 36 71', category: 'chinese' }

[ guy_savoy, judy, marco_polo, sagan, vong ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
