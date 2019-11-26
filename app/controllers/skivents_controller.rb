class SkiventsController < ApplicationController
  skip_before_action :authentificate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @skivents = Skivent.search_by_name(params[:query])
    else
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

  private

  def skivent_params
    params.require(:skivent).permit(:title, :date, :description, :level, :number_of_place, :car, :resort_id, :user_id)
  end
end
