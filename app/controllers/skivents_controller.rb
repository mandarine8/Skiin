class SkiventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @navbar_transparent = true
    @resorts = Resort.geocoded
    # loop if there is a query
    if params[:query].present?
      @skivents = Skivent.search_by_title(params[:query])
      @filtered_resorts = []
      # push all resorts from queried skivents
      @skivents.each do |skivent|
        @filtered_resorts.push(skivent.resort)
      end
      # create markers only for selected resorts
      @markers = @filtered_resorts.uniq.map do |resort|
        {
          lat: resort.latitude,
          lng: resort.longitude,
          name: resort.name,
          skivents: resort.skivents.size,
          infoWindow: render_to_string(partial: "shared/map_info", locals: { resort: resort })
        }
      end
    # loop if there is no query
    else
      @markers = @resorts.map do |resort|
        {
          lat: resort.latitude,
          lng: resort.longitude,
          name: resort.name,
          skivents: resort.skivents.size,
          infoWindow: render_to_string(partial: "shared/map_info", locals: { resort: resort })
        }
      end
    @skivents = Skivent.all
    end
  end

  def show
    @skivent = Skivent.find(params[:id])
    @booking = Booking.new
  end

  def new
    @skivent = Skivent.new
  end

  def create
    @skivent = Skivent.new(skivent_params)
    @skivent.user = current_user
    if @skivent.save!
      redirect_to skivents_path(@skivent)
    else
      render :new
    end
  end

  def edit
    @skivent = Skivent.find(params[:id])
  end

  def update
    @skivent = Skivent.find(params[:id])
    if @skivent.update(skivent_params)
      redirect_to skivent_path(@skivent)
    else
      render :edit
    end
  end

  def destroy
    @skivent = Skivent.find(params[:id])
    @skivent.destroy
    redirect_to skivents_path
  end

  def book
    skivent = Skivent.find(params[:id])
    booking = Booking.new(skivent: skivent, user: current_user, status: "pending")
    booking.save

    redirect_to user_path(current_user)
  end

  private

  def skivent_params
    params.require(:skivent).permit(:title, :date, :description, :level, :number_of_place, :car, :resort_id, :user_id)
  end
end
