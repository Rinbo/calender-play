class ShiftPattern < ApplicationRecord
  belongs_to :planning_period
  has_many :shifts
end
