class UsersController < ApplicationController
  def show
    @rating = Rating.new
    @user = User.find(params[:id])
    @skivents = @user.skivents.last(3)
    @requested_bookings = @user.bookings
    @booked_skivents = @user.booked_skivents.last(3)
    @incoming_bookings = []
    @average_rating = compute_average
    @skivents.each do |skivent|
      skivent.bookings.each do |booking|
        @incoming_bookings << booking
      end
    end
    if @user == current_user
      render :my_show
    else
      render :other_user_show
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def compute_average
    @average = []
    @user.received_ratings.each do |rating|
      @average << rating.rating
    end
    (@average.sum) / @average.size
  end

  private

  def dish_params
    params.require(:user).permit(:name, :email, :description, :level, :picture)
  end
end
