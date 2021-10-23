class Dish < ActiveRecord::Base
  has_one_attached :dish_photo
end
