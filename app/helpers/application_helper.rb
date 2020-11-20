module ApplicationHelper
  def spot_image(spot)
    if spot.photo.present?
      spot.photo.key
    else
      "no-image-icon"
    end
  end
end
