

Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.spice,
                        country_of_origin: Faker::Address.country,
                        cost: Faker::Number.decimal(2))

end

p "Created #{Product.count} products (coffee products)"

250.times do |index|
Review.create!(author: Faker::Name.unique.name,
                      content_body: Faker::Lorem.characters(100),
                      rating: Faker::Number.between(1, 5),
                      product_id: Faker::Number.between(65, 114))
end
