class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  # validate :xpto

  # private

  # def xpto
  #   errors.add(:fav_spot, "qualquer coisa")
  # end

end
