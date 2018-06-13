puts "Cleaning the database..."

Flat.destroy_all
User.destroy_all

puts "Creating users..."

user_1 = User.create(firstname: "Haseeb", lastname: "Chau", email: "haschau@gmail.com", password: "miami100")
user_2 = User.create(firstname: "Zayeed", lastname: "Bandito", email: "bandito@gmail.com", password: "miami101")
user_3 = User.create(firstname: "Chris", lastname: "Hamp", email: "hamp@gmail.com", password: "miami102")

puts "Creating flats..."

flat_1 = Flat.create!(name: "Beautiful flat", description: "Central located apartment", price: 100, address: "carrer Sant Pau", city: "Barcelona", capacity: 4, remote_photo_url: "https://images.unsplash.com/photo-1484101403633-562f891dc89a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8a3b12d469f015fa722a3e564a290466&auto=format&fit=crop&w=2853&q=80", user_id: user_1.id)
flat_2 = Flat.create!(name: "Best flat", description: "Near to the beach", price: 150, address: "carrer Bailen", city: "Barcelona", capacity: 3, remote_photo_url: "https://images.unsplash.com/photo-1524634126442-357e0eac3c14?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4064ffb7faed38e598684dc88794b5d9&auto=format&fit=crop&w=3134&q=80", user_id: user_2.id)
flat_3 = Flat.create!(name: "Random flat", description: "Beautiful view in Collserola", price: 200, address: "carrer de Has", city: "Collserola", capacity: 5, remote_photo_url: "https://images.unsplash.com/photo-1504479519050-de194bc81ba6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ba156fe7a0947ecce18034c076d9c45d&auto=format&fit=crop&w=3034&q=80", user_id: user_3.id)

puts "#{User.count} users created"
puts "#{Flat.count} flats created"

puts "Done"

