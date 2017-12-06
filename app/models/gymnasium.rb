class Gymnasium < ActiveRecord::Base
  has_many :timeslots
  has_many :reservations, through: :timeslots
  validates :name, presence: true
  validate :maxOccupants
  validates :maxUsers, presence: true

  def maxOccupants
    errors.add(:currentUsers, "error") unless currentUsers <= maxUsers
  end
end
