class Board < ActiveRecord::Base
  validates_presence_of :board_number, :board_seats

  has_many :bookings
end
