# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movie

# restaurants =Restaurant.all
# restaurants.each do |r|
#   5.times do
#     Review.create(content:["its good", "its bad", "meh"].sample, rating:[1,2,3,4].sample, restaurant: r)
#   end
#   r["overall_rating"] = ((r.reviews.map{|review| review.rating}.sum)/r.reviews.count).round()
#   r["overall_rating"]
#   r.save
# end




# 5.times do
#   Restaurant.create(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.street_address,
#     phone_number: Faker::PhoneNumber.cell_phone,
#     category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
#     chef_name: "Chef #{Faker::Name.name}",
#     chef_bio: Faker::Food.description
#   )
# end
