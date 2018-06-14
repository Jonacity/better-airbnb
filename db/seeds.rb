puts "Cleaning the database..."

Flat.destroy_all
User.destroy_all
Booking.destroy_all

puts "Creating users..."

user_1 = User.create!(firstname: "Haseeb", lastname: "Chau", email: "haschau@ceziam.com", password: "miami101")
user_2 = User.create!(firstname: "Zayeed", lastname: "Bandito", email: "bandito@ceziam.com", password: "miami101")
user_3 = User.create!(firstname: "Chris", lastname: "Hamp", email: "hamp@ceziam.com", password: "miami101")
user_4 = User.create!(firstname: "Jonathan", lastname: "Sitti", email: "jonathan@ceziam.com", password: "miami101")
user_5 = User.create!(firstname: "Santi", lastname: "Eid", email: "santi@ceziam.com", password: "miami101")
user_6 = User.create!(firstname: "Haruka", lastname: "Aoki", email: "haruka@ceziam.com", password: "miami101")

puts "Creating flats..."

stars = [ 1, 2, 3, 4, 5 ]

flat_1 = Flat.create!(name: "Beautiful flat", description: "Central location in Barcelona", price: 100, address: "Carrer de Bailèn, 119, Barcelona", city: "Barcelona", capacity: 4, remote_photo_url: "https://images.unsplash.com/photo-1484101403633-562f891dc89a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8a3b12d469f015fa722a3e564a290466&auto=format&fit=crop&w=2853&q=80", user_id: User.all.sample.id, rating: stars.sample)
flat_2 = Flat.create!(name: "Nice flat", description: "Perfect flat near to the beach", price: 250, address: "Carrer Nou de la Rambla, Barcelona", city: "Barcelona", capacity: 3, remote_photo_url: "https://images.unsplash.com/photo-1524634126442-357e0eac3c14?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4064ffb7faed38e598684dc88794b5d9&auto=format&fit=crop&w=3134&q=80", user_id: User.all.sample.id, rating: stars.sample)
flat_3 = Flat.create!(name: "Flat in the nature", description: "Beautiful view in Collserola", price: 200, address: "Parque Natural de la Sierra de Collserola, Barcelona", city: "Collserola", capacity: 5, remote_photo_url: "https://images.unsplash.com/photo-1496205169837-89008730676b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=32fb2497c775790260db09c692f73a3d&auto=format&fit=crop&w=1050&q=80", user_id: User.all.sample.id, rating: stars.sample)
flat_4 = Flat.create!(name: "Museo del Fútbol Club Barcelona", description: "Football friendly, come discover the FCB culture!", price: 150, address: "Museo del Fútbol Club, Barcelona", city: "Barcelona", capacity: 7, remote_photo_url: "https://images.unsplash.com/photo-1464890100898-a385f744067f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7d72ed8a68b99c744adfcaf621d3e255&auto=format&fit=crop&w=1500&q=80", user_id: User.all.sample.id, rating: stars.sample)
flat_5 = Flat.create!(name: "Perfect location", description: "OAB Studio in the city center", price: 400, address: "Carrer de Balmes, 145, Barcelona", city: "Barcelona", capacity: 10, remote_photo_url: "https://images.unsplash.com/photo-1472207241423-9e30d66d4b0f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0e00e6426242e8a76cb85abc1c1dfcb5&auto=format&fit=crop&w=1050&q=80", user_id: User.all.sample.id, rating: stars.sample)
flat_6 = Flat.create!(name: "Center flat in Madrid", description: "Royal Tapestry Factory", price: 200, address: "Calle Fuenterrabía, 2, Madrid", city: "Madrid", capacity: 3, remote_photo_url: "https://images.unsplash.com/photo-1444223455095-d2fe3f00f1d0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=147dd081c408490c0a74ebf0abd38509&auto=format&fit=crop&w=1185&q=80", user_id: User.all.sample.id, rating: stars.sample)
flat_7 = Flat.create!(name: "Palais royal de Madrid", description: "Luxuty location perfect for big parties", price: 2000, address: "Calle de Bailén, Madrid", city: "Madrid", capacity: 30, remote_photo_url: "https://images.unsplash.com/photo-1519998203158-48b796d5cbfe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e407321a6d4b30faed16a0afe6d6fc5b&auto=format&fit=crop&w=1050&q=80", user_id: User.all.sample.id, rating: stars.sample)
flat_8 = Flat.create!(name: "Teatro Nuevo Apolo", description: "Central apartment", price: 500, address: "Plaza Tirso de Molina, 1, Madrid", city: "Madrid", capacity: 6, remote_photo_url: "https://images.unsplash.com/photo-1509322479815-6b85f2442ff0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=76ed84b16405c5486d2969f0f3b9cfcc&auto=format&fit=crop&w=1500&q=80", user_id: User.all.sample.id, rating: stars.sample)
flat_9 = Flat.create!(name: "Maison musée de Lope de Vega", description: "Beautiful flat in Madrid", price: 350, address: "Calle de Cervantes, 11, Madrid", city: "Madrid", capacity: 4, remote_photo_url: "https://images.unsplash.com/photo-1509380774267-d7fcad0d0cf9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=995300a1efafb1fd040898f34c08740a&auto=format&fit=crop&w=967&q=80", user_id: User.all.sample.id, rating: stars.sample)
flat_10 = Flat.create!(name: "Meliá Madrid Serrano", description: "Nice apartment in Madrid", price: 150, address: "Calle de Claudio Coello, 139, Madrid", city: "Madrid", capacity: 2, remote_photo_url: "https://images.unsplash.com/photo-1521311394770-4cbf8c2508bb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=bfe643ca9a74a4e9a2af32066860dc59&auto=format&fit=crop&w=877&q=80", user_id: User.all.sample.id, rating: stars.sample)


puts "#{User.count} users created"
puts "#{Flat.count} flats created"

puts "Done"

