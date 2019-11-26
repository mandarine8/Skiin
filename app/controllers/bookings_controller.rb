class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    skivent = Skivent.find(params[:skivent_id])
    @booking.skivent = skivent
    @booking.save!
      redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :user_id, :skivent_id)
  end

end
