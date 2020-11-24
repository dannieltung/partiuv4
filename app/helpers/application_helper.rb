module ApplicationHelper
  def spot_image(spot)
    if spot.photo.present?
      spot.photo.key
    else
      "no-image-icon"
    end
  end

  def user_image(current_user)
    if current_user.photo.present?
      current_user.photo.key
    else
      "avatar"
    end
  end
end
