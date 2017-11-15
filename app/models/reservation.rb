class Reservation < ApplicationRecord
	include ActiveModel::Validations
	belongs_to :timeslots
	belongs_to :users
	attr_reader :timeslot, :user
	validates :timeslot, presence:true
	validates :user, presence:true
	validates :timeslot,uniqueness: {scope: :user}

end
