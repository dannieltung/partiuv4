
class PagesController < ApplicationController
  # before_action :splash
  skip_before_action :authenticate_user!, only: :home
  # o equivalente ao index
  def home

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



#     def splash
#       render :splash
#       sleep 5
#       redirect_to :root
#     end

end
