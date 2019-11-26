class ResortsController < ApplicationController

  def show
    @resort = Resort.find(params[:id])
    @skivents = @resort.skivents
  end
end
