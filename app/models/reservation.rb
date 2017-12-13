class Reservation < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :timeslot
  counter_culture :timeslot, column_name: "reservations_count"
  belongs_to :user
  counter_culture :user, column_name: "reservations_count"
  validates :timeslot_id, presence: true
  validates :user_id, presence: true
  validates :timeslot_id, uniqueness: {scope: :user_id}
end
