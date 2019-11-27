class ResortsController < ApplicationController

  def show
    @resort = Resort.find(params[:id])
    @skivents = @resort.skivents
    @resorts = Resort.geocoded

    @markers = @resorts.map do |resort|
      {
        lat: resort.latitude,
        lng: resort.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { resort: resort })
      }
    end
  end

end
