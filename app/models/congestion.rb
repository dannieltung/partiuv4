class Congestion < ApplicationRecord
  enum level: [:low, :medium, :high]
  belongs_to :user
  belongs_to :spot
end
