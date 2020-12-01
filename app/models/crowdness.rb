class Crowdness < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  belongs_to :spot
  validates :level, presence: true
  has_many_attached :photos
end
