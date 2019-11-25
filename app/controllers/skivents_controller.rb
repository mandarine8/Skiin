class SkiventsController < ApplicationController
  skip_before_action :authentificate_user!, only: :index

  def index

  end

  def show

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def dish_params
  end
end
