class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @rating = Rating.new
    @average_rating = @user.average_rating

    today = DateTime.now.to_date

    @requested_bookings = @user.bookings
    @past_skivents = @user.skivents.where("date < ?", today) + @user.booked_skivents.where("date < ?", today)
    @upcoming_skivents = @user.skivents.where("date >= ?", today) + @user.booked_skivents.where("date >= ?", today)

    @ratings = retrieve_ratings_for_user(@user)

    if @user == current_user
      @incoming_bookings = @user.pending_bookings
      @booked_skivents = @user.booked_skivents.last(3)

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

  def message
    flash[:notice] = "Your message has been sent!"
    redirect_to user_path(current_user)
  end

  private

  def retrieve_ratings_for_user(user)
    user_ratings = []
    Rating.all.each do |rating|
      user_ratings.push rating if rating.skivent.user == user
    end
    user_ratings
  end

  def dish_params
    params.require(:user).permit(:name, :email, :description, :level, :picture)
  end
end
