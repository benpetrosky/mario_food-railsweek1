

Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.spice,
                        country_of_origin: Faker::Address.country,
                        cost: Faker::Number.decimal(2),
                        :reviews_attributes =>
                          [
                          {author: Faker::Name.unique.name,
                          content_body: Faker::Lorem.characters(100),
                          rating: Faker::Number.between(1, 5)},

                          {author: Faker::Name.unique.name,
                          content_body: Faker::Lorem.characters(100),
                          rating: Faker::Number.between(1, 5)},

                          {author: Faker::Name.unique.name,
                          content_body: Faker::Lorem.characters(100),
                          rating: Faker::Number.between(1, 5)},

                          {author: Faker::Name.unique.name,
                          content_body: Faker::Lorem.characters(100),
                          rating: Faker::Number.between(1, 5)},

                          {author: Faker::Name.unique.name,
                          content_body: Faker::Lorem.characters(100),
                          rating: Faker::Number.between(1, 5)}
                          ])


end

10.times do |index|
  Product.create!(name: Faker::Food.spice,
                        country_of_origin: "United States",
                        cost: Faker::Number.decimal(2),
                        :reviews_attributes =>
                        [
                        {author: Faker::Name.unique.name,
                        content_body: Faker::Lorem.characters(100),
                        rating: Faker::Number.between(1, 5)},

                        {author: Faker::Name.unique.name,
                        content_body: Faker::Lorem.characters(100),
                        rating: Faker::Number.between(1, 5)}
                        ])
end

p "Created #{Product.count} products (coffee products)"
