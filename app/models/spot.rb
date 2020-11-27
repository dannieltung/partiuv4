class Spot < ApplicationRecord
  has_many :favorites
  has_many :crowdnesses
  validates :name, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
end
