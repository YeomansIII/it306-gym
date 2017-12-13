class Gymnasium < ActiveRecord::Base
  has_many :timeslots
  has_many :reservations, through: :timeslots
  validates :name, presence: true
  validates :maxUsers, presence: true
end
