class Crowdness < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  belongs_to :spot
  validates :level, numericality: { greater_than_or_equal_to: 1 }, presence: true
  validates :description, presence: true
  has_many_attached :photos
end
