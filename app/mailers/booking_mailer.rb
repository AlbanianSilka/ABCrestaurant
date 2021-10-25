class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.booking_created.subject
  #
  def booking_created
    @booking = params[:booking]
    @greeting = "Hi"
    attachments['qr_booking.jpeg'] = File.read('app/assets/images/qr_booking.jpeg')

    mail to: @booking.email, subject: 'You have booked a table'
  end
end
