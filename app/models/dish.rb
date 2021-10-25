class Dish < ActiveRecord::Base
  validates :description, :dish_price, :dish_name, presence: true

  has_one_attached :dish_photo

end
