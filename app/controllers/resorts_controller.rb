class ResortsController < ApplicationController
  def show
    @navbar_transparent = true
    @resort = Resort.find(params[:id])
    @skivents = @resort.skivents
    @resorts = Resort.geocoded
    @previous_url = request.referrer
  end
end
