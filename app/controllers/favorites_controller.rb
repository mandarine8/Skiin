class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites
  end

  def create
    @favorite = Favorite.new(
      skivent: Skivent.find(params[:skivent_id]),
      user: current_user
    )
    @favorite.save!
    redirect_to skivents_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to skivents_path
  end
end
