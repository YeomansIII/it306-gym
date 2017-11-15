class Timeslot < ApplicationContoller 
 	belongs_to :gymnasium
	has_name :reservations 
	requires :timeslot_begins
	requires :timeslot_ends
end 
