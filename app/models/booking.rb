class Booking < ActiveRecord::Base
  belongs_to :boards_ids, class_name: 'Board', foreign_key: :board_id

  validates_presence_of :email

  private

  # method to delete booking after 24 hours after it was created
  def delete_old_booking
    self.class.destroy(id)
  end
end
