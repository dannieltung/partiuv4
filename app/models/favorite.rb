class Favorite < ApplicationRecord
  belongs_to :user
  validates :fav_spot, presence: true
end
