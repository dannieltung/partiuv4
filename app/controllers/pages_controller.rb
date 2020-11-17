class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  # o equivalente ao index
  def home
    @spots = Spot.all
  end

end
