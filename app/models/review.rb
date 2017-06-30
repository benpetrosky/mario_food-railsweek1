
class Review < ActiveRecord::Base
 belongs_to :product

 validates :author, :presence => true
 validates :content_body, :presence => true, length: { in: 50..250 }

 validates :rating, :presence => true, numericality: { only_integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: 1 }
end
