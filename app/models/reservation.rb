class Reservation < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :timeslots
  belongs_to :users
  attr_reader :timeslot, :user
  validates :timeslot_id, presence: true
  validates :user_id, presence: true
  validates :timeslot_id, uniqueness: {scope: :user_id}

end
