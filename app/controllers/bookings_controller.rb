class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.camera = Camera.find(params[:booking][:camera_id])
    @booking.save!
    redirect_to user_path(current_user)
  end


  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
