class AddFieldsToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :timeslot_id, :integer, index: true
    add_column :reservations, :user_id, :integer, index: true
    add_foreign_key :reservations, :timeslots
    add_foreign_key :reservations, :users
  end
end
