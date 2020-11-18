class Spot < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  validates :address, presence: true
  validates :crowd_congestion, presence: true
end
