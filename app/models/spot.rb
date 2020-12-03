class Spot < ApplicationRecord
  has_many :favorites
  has_many :crowdnesses
  validates :name, presence: true
  validates :street, presence: true
  validates :number, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user

  accepts_nested_attributes_for :crowdnesses
end
