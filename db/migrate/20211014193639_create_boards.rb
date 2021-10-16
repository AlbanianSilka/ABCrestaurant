class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string :board_number
      t.integer :board_seats
      t.string :board_bookings
      t.timestamps
    end
  end
end
