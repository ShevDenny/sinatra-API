# puts “clearing old data...”
# Buyer.destroy_all
# Painting.destroy_all
# Gallery.destroy_all
# Review.destroy_all

puts “seeding buyers...”
10.times do
Buyer.create(name: Faker::Name.name, email:Faker::Internet.email)
end

puts “seeding galleries...”
5.times do
times = ["from: 12:00 pm, to: 7:00 pm", "from: 10:00 am, to: 6:00 pm", "from: 9:30 am, to: 5:30 pm", "from: 1:00 pm, to: 8:00 pm"].sample

Gallery.create(gallery_name: Faker::Company.name, date: Faker::Date.between(from: '2021-07-19', to: '2022-02-25'), time: times, location: Faker::Address.street_address)

end

puts “seeding reviews...”
20.times do
comments = ["Beautiful gallery", "Loved it here", "Must visit", "Wide variety and great selection of paintings"].sample
buyer_id = Buyer.ids.sample
gallery_id = Gallery.ids.sample

Review.create(comment: comments, buyer_id: buyer_id, gallery_id: gallery_id)

end

puts “seeding paintings...”
30.times do 

price = rand(50000..2000000)

Painting.create(painting_name: Faker::Ancient.titan, artist_name: Faker::Artist.name, price: price )
end

puts "Paintings are in the Vault!!"