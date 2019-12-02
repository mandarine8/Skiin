class RatingsController < ApplicationController
  def create
    @rating = Rating.new
    @rating.user = current_user
    @rating.review = params[:rating][:review]
    @rating.rating = params[:rating][:rating]
    @rating.skivent = Skivent.find(params[:rating][:skivent].to_i)
    @rating.save!
    redirect_to user_path(@rating.skivent.user)
    # @user.rating.reduce(0) { |sum, val| val.note + sum } / @user.rating.count)
  end
end
