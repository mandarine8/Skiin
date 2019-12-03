class UsersController < ApplicationController
  def show
    @rating = Rating.new
    @user = User.find(params[:id])
    @skivents = @user.skivents.last(3)
    @requested_bookings = @user.bookings
    @booked_skivents = @user.booked_skivents.last(3)
    @incoming_bookings = []
    @average_rating = @user.average_rating
    @skivents.each do |skivent|
      skivent.bookings.each do |booking|
        @incoming_bookings << booking
      end
    end
    if @user == current_user
      if @user.level == "beginner"
        @level = 1
      elsif @user.level == "intermediate"
        @level = 2
      else
        @level = 3
      end

      render :my_show
    else
      render :other_user_show
    end
  end

  def update
    @user = User.find(params[:id])
    car = params[:user][:car] == "true"
    @user.update(level: params[:user][:level], car: car)
    redirect_to user_path(@user)
  end

  private

  def dish_params
    params.require(:user).permit(:name, :email, :description, :level, :picture)
  end
end
