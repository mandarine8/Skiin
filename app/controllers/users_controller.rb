class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @skivents = @user.skivents.last(3)
    @requested_bookings = @user.bookings
    @booked_skivents = @user.booked_skivents.last(3)
    @incoming_bookings = []
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

  private

  def dish_params
    params.require(:user).permit(:name, :email, :description, :level, :picture)
  end
end
