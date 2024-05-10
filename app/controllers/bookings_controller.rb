class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    # @camera.user_id = current_user.id
    @booking.save!
    # redirect_to camera_path(@camera)
  end


  def camera_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
