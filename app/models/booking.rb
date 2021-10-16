class Booking < ActiveRecord::Base
  belongs_to :boards_ids, class_name: 'Board', foreign_key: :board_id

  # validates_presence_of :start_time, :end_time, :board_id



  # def end_time_after_start_time
  #   return if end_time.blank? || start_time.blank?
  #
  #   if end_time < start_time
  #     errors.add(:end_time, 'must be after the start time')
  #   end
  # end
end
