class UsersController < ApplicationController
  def show
    @footer_fixed = true
    @rating = Rating.new
    @user = User.find(params[:id])
    @average_rating = @user.average_rating

    @skivents = @user.skivents
    today = DateTime.now.to_date

    @requested_bookings = @user.bookings

    # all your skivents in the past
    @past_skivents = @user.skivents.select do |skivent|
      skivent.date < today
    end

    @user.bookings.each do |booking|
      @past_skivents << booking.skivent if booking.skivent.date < today
    end

    @upcoming_skivents = @user.skivents.where("date > ?", today) + @user.booked_skivents.where("date > ?", today)

    @booked_skivents = @user.booked_skivents.last(3)

    @incoming_bookings = []

    @user.skivents.each do |skivent|
      skivent.bookings.each do |booking|
        if booking.status == "pending"
          @incoming_bookings << booking
        end
      end
    end
    @ratings = retrieve_ratings_for_user(@user)


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
