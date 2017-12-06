class Timeslot < ActiveRecord::Base
  belongs_to :gymnasium
  has_many :reservations, inverse_of: :timeslot
  # requires :timeslot_ends
  validates_uniqueness_of :hour, scope: :date
end 
