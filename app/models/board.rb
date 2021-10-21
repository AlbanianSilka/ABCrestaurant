class Board < ActiveRecord::Base
  validates_presence_of :board_number, :board_seats

  has_many :bookings

  after_initialize :check_booking

  private


  # set table booking status to false if there is no bookings
  def check_booking
    if self.bookings.length == 0
      self.booked = false
    end
  end
end
