class Spot < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :crowd_congestion, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
