class AddBoardIdToBookings < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :bookings, :board
  end
end
