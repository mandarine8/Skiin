class SkiventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @navbar_transparent = true
    @resorts = Resort.geocoded

    if params[:date].present?
      d = params[:date].split("/")
      @date = Date.new(d[2].to_i, d[0].to_i, d[1].to_i)
    end

    @query = params[:query]
    @level = params[:level]

    # loop if there is a query
    if @query.present?
      @all_skivents = Skivent.search_by_title(@query)

      if @date
        @skivents = @all_skivents.select do |skivent|
          skivent.date == @date
        end
      else
        @skivents = @all_skivents
      end

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
      if @date
        @skivents = Skivent.all.select do |skivent|
          skivent.date == @date
        end
        @resorts = []
        # push all resorts from queried skivents
        @skivents.each do |skivent|
          @resorts.push(skivent.resort)
        end
      else
        @skivents = Skivent.all
      end

      @markers = @resorts.map do |resort|
        {
          lat: resort.latitude,
          lng: resort.longitude,
          name: resort.name,
          skivents: resort.skivents.size,
          infoWindow: render_to_string(partial: "shared/map_info", locals: { resort: resort })
        }
      end
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
    @skivent.resort = Resort.find(params[:skivent][:resort].to_i)
    if @skivent.save!
      flash[:notice] = "Your Skivent has been created!"
      redirect_to skivents_path
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

    flash[:notice] = "The Skivent has been booked!"

    redirect_to user_path(current_user)
  end

  private

  def skivent_params
    params.require(:skivent).permit(:title, :date, :description, :level, :number_of_place, :car, :user_id, :photo, :photo_cache)
  end
end
