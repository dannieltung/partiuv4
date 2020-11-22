class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  # o equivalente ao index
  def home

    @country = request.location.country

    @spots = Spot.all
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        infoWindow: render_to_string(partial: "spots/info_window", locals: { spot: spot })
      }
    end
  end
end
