class Timeslot < ActiveRecord::Base
 	belongs_to :gymnasium
	has_many :reservations
	# requires :timeslot_ends
	validates:timeslot
end 
