class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  # o equivalente ao index
  def home
    @spots = Spot.all
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude
        infoWindow: render_to_string(partial: "info_window", locals: { flat: flat })
      }
    end
  end
end
