class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  # o equivalente ao index
  def home
    @spot = Spot.new(spot_params)
    @spots = Spot.all
  end

  private

  def spot_params
    params.require(:spot).permit(:address, :crowd_congestion, :description, photos: [])
  end

end
