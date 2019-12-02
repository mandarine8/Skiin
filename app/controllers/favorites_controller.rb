class FavoritesSkiventsController < ApplicationController
  def index
    @favorites = current_user.favorites
  end

  def create
    @favorite = Favorite.new(
      skivent: Skivent.find(params[:skivent_id]),
      user: current_user
    )
    @favorite.save!
    redirect_to
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path
  end
end

