class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @navbar_transparent = true
  end
end
