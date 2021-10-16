class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :booked_by
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
