class Favorite < ApplicationRecord
  belongs_to :user
  validates :fav_spot, presence: true
  # validate :xpto

  # private

  # def xpto
  #   errors.add(:fav_spot, "qualquer coisa")
  # end

end
