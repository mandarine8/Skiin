class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    skivent = Skivent.find(params[:skivent_id])
    @booking.skivent = skivent
    @booking.save!
    redirect_to booking_path(@booking)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if params[:booking][:status] == "accepted"
      @booking.update!(status: "accepted")
    elsif params[:booking][:status] == "declined"
      @booking.update!(status: "declined")
    end
    redirect_to user_path(@booking.skivent.user)
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :user_id, :skivent_id)
  end
end
