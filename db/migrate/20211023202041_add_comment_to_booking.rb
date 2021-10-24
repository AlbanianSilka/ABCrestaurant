class AddCommentToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :order_comment, :text
  end
end
