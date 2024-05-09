# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"


puts "Cleaning database..."
User.destroy_all
Camera.destroy_all
Booking.destroy_all
Review.destroy_all

puts "Creating users..."

 hafsah = User.create!(email: "Hafsah@thequeen.com", password: "password", first_name: "Hafsah", last_name: "Queen", user_name: "hafsah", address: "56 Covent Garden, London, WC2E 9DD", phone_number: "077088881234" )
 joshua = User.create!(email: "Joshua@thelegend.com", password: "password", first_name: "Joshua", last_name: "Legend", user_name: "jushua", address: "65 Liverpool street, London, EC2M 7QN", phone_number: "07701010101" )
 tony = User.create!(email: "Tony@theteamplayer.com", password: "password", first_name: "Tony", last_name: "Teamplayer", user_name: "tony", address: "78 Nottinghill Gate, London, W11 1PG", phone_number: "077000000000" )

puts "Created 4 Users"

puts "Creating cameras..."

camera1 = Camera.new(title: "Canon - EOS 5D Mark IV", description: "Professional full-frame DSLR camera with 30.4MP resolution and 4K video recording.", price: 49.99, available_yn: true, user_id: hafsah.id )
camera1.photo.attach(filename: "Canon-EOS5DMarkIV.jpg", content_type: "image/png", io: URI.open("https://res.cloudinary.com/dopxbkgda/image/upload/fl_preserve_transparency/v1715172915/canon_5d_mkiv_xgj7xz.jpg"))
camera1.save!

camera2 = Camera.create!(title: "Nikon - D850", description: "High-resolution full-frame DSLR with 45.7MP sensor and advanced autofocus system.", price: 59.99, available_yn: true, user_id: joshua.id )
camera2.photo.attach(filename: "Nikon-D850.jpg", content_type: "image/png", io: URI.open("https://res.cloudinary.com/dopxbkgda/image/upload/fl_preserve_transparency/v1715172915/nikon_d850__gxhbwk.jpg"))
camera2.save!

camera3 = Camera.create!(title: "Sony - X7 III", description: "Compact full-frame mirrorless camera with excellent low-light performance and 4K video.", price: 39.99, available_yn: true, user_id: tony.id )
camera3.photo.attach(filename: "Sony-X7III.jpg", content_type: "image/png", io: URI.open("https://res.cloudinary.com/dopxbkgda/image/upload/fl_preserve_transparency/v1715172916/sony_a7_III_wvplrc.jpg"))
camera3.save!

camera4 = Camera.create!(title: "Fujifilm - X-T3", description: "Lightweight and powerful mirrorless camera with advanced image processing and 4K video.", price: 29.99, available_yn: true, user_id: hafsah.id )
camera4.photo.attach(filename: "Fujifilm-X-T3.jpg", content_type: "image/png", io: URI.open("https://res.cloudinary.com/dopxbkgda/image/upload/fl_preserve_transparency/v1715172916/fujifilm-xt3_xklqco.jpg"))
camera4.save!

camera5 = Camera.create!(title: "Mamiya - RB67 Pro SD", description: "Heavy studio quality medium format camera with rotating back. Shoots 6x7 negatives on 50mm film.", price: 129.99, available_yn: true, user_id: joshua.id )
camera5.photo.attach(filename: "Mamiya-RB67ProSD.jpg", content_type: "image/png", io: URI.open("https://res.cloudinary.com/dopxbkgda/image/upload/fl_preserve_transparency/v1715172915/mamiya_rb67_pro_sd_hfrlg1.jpg"))
camera5.save!

camera6 = Camera.create!(title: "Fujifilm - X100T", description: "Super funky looking camera for those that dont know much about photography but want to look cool", price: 89.99, available_yn: true, user_id: tony.id )
camera6.photo.attach(filename: "Fujifilm-X100T.jpg", content_type: "image/png", io: URI.open("https://res.cloudinary.com/dopxbkgda/image/upload/fl_preserve_transparency/v1715172915/fujifilm_x100t_as4xyt.jpg"))
camera6.save!

camera7 = Camera.create!(title: "Nikon - D750", description: "A versatile full-frame DSLR camera with excellent low-light performance.", price: 49.99, available_yn: true, user_id: hafsah.id )
camera7.photo.attach(filename: "Nikon-D750.jpg", content_type: "image/png", io: URI.open("https://res.cloudinary.com/dopxbkgda/image/upload/fl_preserve_transparency/v1715172915/nikon_d750_soxeir.jpg"))
camera7.save!

camera8 = Camera.create!(title: "Sony - Alpha A7 III", description: "A mirrorless camera known for its impressive autofocus capabilities and high-resolution sensor.", price: 99.99, available_yn: true, user_id: joshua.id )
camera8.photo.attach(filename: "Sony-AlphaA7III.jpg", content_type: "image/png", io: URI.open("https://res.cloudinary.com/dopxbkgda/image/upload/fl_preserve_transparency/v1715172916/sony_a7_III_wvplrc.jpg"))
camera8.save!

camera9 = Camera.create!(title: "Fujifilm - X-T4", description: "A compact and powerful mirrorless camera with in-body image stabilization.", price: 29.99, available_yn: true, user_id: tony.id )
camera9.photo.attach(filename: "Fujifilm-X-T4.jpg", content_type: "image/png", io: URI.open("https://res.cloudinary.com/dopxbkgda/image/upload/fl_preserve_transparency/v1715172915/fujifilm_xt4_vs0x9a.jpg"))
camera9.save!

camera10 = Camera.create!(title: "Panasonic - Lumix GH5", description: "A versatile mirrorless camera favored by videographers for its 4K video capabilities.", price: 30, available_yn: true, user_id: hafsah.id )
camera10.photo.attach(filename: "Panasonic-LumixGH5.jpg", content_type: "image/png", io: URI.open("https://res.cloudinary.com/dopxbkgda/image/upload/fl_preserve_transparency/v1715172915/panasonic_lumix_gh5_jeooig.jpg"))
camera10.save!

puts "Created 10 camera"

puts "Creating bookings..."

booking1 = Booking.create!(start_date: "14/05/2024", end_date: "16/05/2024", accepted_yn: true, user_id: tony.id, camera_id: camera5.id)
booking2 = Booking.create!(start_date: "14/05/2024", end_date: "16/05/2024", accepted_yn: true, user_id: hafsah.id, camera_id: camera6.id)

puts "Created 2 bookings"


puts "Creating reviews..."

Review.create!(rating: 5, comment: "Really great camera, highly recommended.  Joshua is an absolute legend too", booking_id: booking1.id)
Review.create!(rating: 5, comment: "Worked even better than it looks.  Ultra cool. Just like the guy who owns it", booking_id: booking2.id)

puts "Created 2 reviews"

puts "Finished!"
