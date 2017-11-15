class Timeslot < ActiveRecord::Base
 	belongs_to :gymnasium
	has_many :reservations
	# requires :timeslot_begins
	# requires :timeslot_ends
end 
