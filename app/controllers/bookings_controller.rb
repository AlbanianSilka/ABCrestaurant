class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.all
  end

  def show; end

  def new
    @booking = Booking.new
    @board = Board.find(params[:board_id])
  end

  def edit; end

  def create
    @booking = Booking.new(booking_params)
    @board = Board.find(params[:board_id])

    respond_to do |format|
      if @booking.save
        BookingMailer.with(booking: @booking).booking_created.deliver_later
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
        @board.booked = true
        @board.save!
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @booking.update(booking_params)
        BookingJob.set(wait_until: @booking.created_at < 24.hours.ago).perform_later(@booking)
        format.html { redirect_to board_bookings_path, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to board_bookings_url, notice: 'Booking was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:board_id, :booked_by, :booking_time, :email)
  end
end
