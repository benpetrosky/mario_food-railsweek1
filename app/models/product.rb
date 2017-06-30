
class Product < ActiveRecord::Base
 has_many :reviews
 scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
 scope(:us_product, -> do
  where({:country_of_origin => "United States"})
end)

scope :most_reviews, -> {(
  select("products.id, products.name, count(reviews.id) as reviews_count")
  .joins(:reviews)
  .group("products.id")
  .order("reviews_count DESC")
  .limit(1)
  )}


 validates :name, :presence => true
 validates :cost, :presence => true
 validates :country_of_origin, :presence => true
end
