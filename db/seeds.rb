puts "Cleaning the database..."

Flat.destroy_all
User.destroy_all
Booking.destroy_all

puts "Creating users..."

user_1 = User.create(firstname: "Haseeb", lastname: "Chau", email: "haschau@gmail.com", password: "miami100")
user_2 = User.create(firstname: "Zayeed", lastname: "Bandito", email: "bandito@gmail.com", password: "miami101")
user_3 = User.create(firstname: "Chris", lastname: "Hamp", email: "hamp@gmail.com", password: "miami102")

puts "Creating flats..."

flat_1 = Flat.create(name: "Beautiful flat", description: "Central located apartment", price: 100, address: "carrer Sant Pau", city: "Barcelona", capacity: 4, photo: "https://unsplash.com/photos/2dcYhvbHV-M", user_id: user_1.id)
flat_2 = Flat.create(name: "Best flat", description: "Near to the beach", price: 150, address: "carrer Bailen", city: "Barcelona", capacity: 3, photo: "https://unsplash.com/photos/yxRYfsrdyWU", user_id: user_2.id)
flat_3 = Flat.create(name: "Random flat", description: "Beautiful view in Collserola", price: 200, address: "carrer de Has", city: "Collserola", capacity: 5, photo: "https://unsplash.com/photos/HHQtTrosQtM", user_id: user_3.id)

puts "#{User.count} users created"
puts "#{Flat.count} flats created"

puts "Done"

