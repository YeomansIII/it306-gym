class Reservation < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :timeslot, counter_cache: :total_reservations
  belongs_to :user
  attr_reader :timeslot, :user
  validates :timeslot_id, presence: true
  validates :user_id, presence: true
  validates :timeslot_id, uniqueness: {scope: :user_id}

end
