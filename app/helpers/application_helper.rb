module ApplicationHelper

  def user_image(current_user)
    if current_user.photo.present?
      current_user.photo.key
    else
      "avatar"
    end
  end
end
