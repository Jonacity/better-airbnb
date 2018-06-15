puts "Cleaning the database..."

Flat.destroy_all
User.destroy_all
Booking.destroy_all

puts "Creating users..."

user_1 = User.create!(firstname: "Haseeb", lastname: "Chau", email: "haschau@ceziam.com", password: "miami101", remote_photo_url: "https://avatars2.githubusercontent.com/u/16012361?v=4")
user_2 = User.create!(firstname: "Zayeed", lastname: "Bandito", email: "bandito@ceziam.com", password: "miami101", remote_photo_url: "https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg")
user_3 = User.create!(firstname: "Chris", lastname: "Hamp", email: "hamp@ceziam.com", password: "miami101", remote_photo_url: "https://i0.wp.com/news.harvard.edu/wp-content/uploads/2017/03/mark-zuckerberg-headshot-11.jpg")
user_4 = User.create!(firstname: "Jonathan", lastname: "Sitti", email: "jonathan@ceziam.com", password: "miami101", remote_photo_url: "https://avatars3.githubusercontent.com/u/36168653?v=4")
user_5 = User.create!(firstname: "Santi", lastname: "Eid", email: "santi@ceziam.com", password: "miami101", remote_photo_url: "https://avatars0.githubusercontent.com/u/38149454?v=4")
user_6 = User.create!(firstname: "Haruka", lastname: "Aoki", email: "haruka@ceziam.com", password: "miami101", remote_photo_url: "https://avatars3.githubusercontent.com/u/38664271?v=4")

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
 flat_11 = Flat.create!(name: "Beach side flat", description: "Beach side apartment in Barcelona", price: 400, address: "Carrer Mar del Albora, 347, Barcelona", city: "Barcelona", capacity: 6, remote_photo_url: "https://images.unsplash.com/photo-1506126279646-a697353d3166?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3b1a30e500028883128f607fc7b32fc3&auto=format&fit=crop&w=1050&q=80", user_id: User.all.sample.id, rating: stars.sample)
flat_12 = Flat.create!(name: "Flat in Jungle", description: "Jungle apartment in Bali", price: 100, address: "Jalan Raya Singapadu, Sukawati, Singapadu, Sukawati, Kabupaten Gianyar, Bali 80582, Indonesia", city: "Bali", capacity: 4, remote_photo_url: "https://images.unsplash.com/photo-1494948949099-1311f3e907a9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9f352e4b14c3df2b0d2728527a6fb05e&auto=format&fit=crop&w=1050&q=80", user_id: User.all.sample.id, rating: stars.sample)
 flat_13 = Flat.create!(name: "Classic apartment in the city", description: "Classic apartment in Barcelona", price: 150, address: "Carrer de Marià Cubí, 59, Barcelona", city: "Barcelona", capacity: 6, remote_photo_url: "https://images.unsplash.com/photo-1459535653751-d571815e906b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d6d1c3df6acae4923a590b400849ca5d&auto=format&fit=crop&w=1049&q=80", user_id: User.all.sample.id, rating: stars.sample)
 flat_14 = Flat.create!(name: "Cozy apartment", description: "Cozy apartment in Alatoz", price: 250, address: "José matía, 69, Alatoz", city: "Alatoz", capacity: 4, remote_photo_url: "https://images.unsplash.com/photo-1493809842364-78817add7ffb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f3619a27d02a9cbafafbb9d94d477160&auto=format&fit=crop&w=1500&q=80", user_id: User.all.sample.id, rating: stars.sample)
 flat_15 = Flat.create!(name: "Port side flat", description: "Port side flat in Cádiz", price: 250, address: "Calle la Virgen, 10, Cádiz", city: "Cádiz", capacity: 4, remote_photo_url: "https://images.unsplash.com/photo-1468930830753-6699377de411?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a371ee5cc02bf03d5de5612fc73f460e&auto=format&fit=crop&w=1050&q=80", user_id: User.all.sample.id, rating: stars.sample)
flat_16 = Flat.create!(name: "Bolivian classic flat", description: "Bolivian classic flat", price: 200, address: "Av.Roca y Coronado 901, Santa Cruz de la Sierra", city: "Santa Cruz de la Sierra", capacity: 6, remote_photo_url: "https://images.unsplash.com/photo-1433786032442-3011415d2fb9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=457bc58d0129c9e3e0f3a0e827c7883d&auto=format&fit=crop&w=1071&q=80", user_id: User.all.sample.id, rating: stars.sample)
 flat_17 = Flat.create!(name: "Scottish classic flat", description: "Scottish classic flat", price: 500, address: "Beach Blvd, UK", city: "Aberdeen", capacity: 8, remote_photo_url: "https://images.unsplash.com/photo-1519643381401-22c77e60520e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5a01717a33db39cbdabd468904b61d22&auto=format&fit=crop&w=1053&q=80", user_id: User.all.sample.id, rating: stars.sample)
 flat_18 = Flat.create!(name: "Japanese classic flat", description: "Japanese classic flat", price: 400, address: "1 Toranomon, Minato-ku, Tokyo", city: "Tokyo", capacity: 4, remote_photo_url: "https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ebd34ddde3f2b4ea6dcdc9b7d329b774&auto=format&fit=crop&w=1050&q=80", user_id: User.all.sample.id, rating: stars.sample)
 flat_19 = Flat.create!(name: "French classic flat", description: "French classic flat", price: 600, address: "19 rue La Boétie", city: "Paris", capacity: 8, remote_photo_url: "https://images.unsplash.com/photo-1523248656148-1402a9849d69?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89471960164af4acbbaea3327bb28b80&auto=format&fit=crop&w=967&q=80", user_id: User.all.sample.id, rating: stars.sample)
 flat_20 = Flat.create!(name: "Luxury beach house", description: "Luxury beach in Barcelona", price: 600, address: "Plaça De La Rosa Dels Vents, Barcelona", city: "Barcelona", capacity: 4, remote_photo_url: "https://images.unsplash.com/photo-1440778303588-435521a205bc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f69c53990c8beebe8351f97d3c27da61&auto=format&fit=crop&w=1050&q=80", user_id: User.all.sample.id, rating: stars.sample)
 flat_21 = Flat.create!(name: "Private villa", description: "Private villa in València", price: 1000, address: "Av. de França, 11, València", city: "València", capacity: 4, remote_photo_url: "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0cf4ef4cb623c8a52b1a624f76eaf5bf&auto=format&fit=crop&w=1050&q=80", user_id: User.all.sample.id, rating: stars.sample)
# flat_22 = Flat.create!
# flat_23 = Flat.create!
# flat_24 = Flat.create!
# flat_25 = Flat.create!
# flat_26 = Flat.create!
# flat_27 = Flat.create!
# flat_28 = Flat.create!  Fenerbahçe Mahallesi, Fener Kalamış Cd. No 38, 34726 Kadıköy/İstanbul, Turkey
# flat_29 = Flat.create!
# flat_30 = Flat.create!
# flat_31 = Flat.create!
# flat_32 = Flat.create!
# flat_33 = Flat.create!
# flat_34 = Flat.create!
# flat_35 = Flat.create!


puts "#{User.count} users created"
puts "#{Flat.count} flats created"

puts "Done"

