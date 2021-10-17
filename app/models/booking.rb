class Booking < ActiveRecord::Base
  belongs_to :boards_ids, class_name: 'Board', foreign_key: :board_id

  validates_presence_of :start_time, :end_time, :board_id

  validate :no_booking_overlap

  def no_booking_overlap
    if Booking.where("(? BETWEEN start_time AND end_time OR ? BETWEEN start_time AND end_time) AND board_id = ?",
                     self.start_time, self.end_time, self.board_id).any?
      errors.add(:end_time, 'it overlaps another booking for this table')
    end
  end

end
