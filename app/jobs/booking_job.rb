class BookingJob < ApplicationJob
  queue_as :default

  def perform(booking)
    booking.delete_old_booking
  end
end
