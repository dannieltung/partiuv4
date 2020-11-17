class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  # o equivalente ao index
  def home
    @spot = Spot.new
    @spots = Spot.all
  end

  private

end
