class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def create

  end

  def booking_params

  end

end
