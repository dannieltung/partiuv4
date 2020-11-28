class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  # o equivalente ao index
  def home

    @country = request.location.country
    @city = request.location.city
    @coordinates = request.location.coordinates

    @spots = Spot.all
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        # iconSize: [50, 50],
        infoWindow: render_to_string(partial: "spots/info_window", locals: { spot: spot })
      }
    end
  end
end
