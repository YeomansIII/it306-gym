class RenameReservationCount < ActiveRecord::Migration
  def change
    rename_column :timeslots, :total_reservations, :reservations_count
    change_column_default :timeslots, :reservations_count, 0
    change_column_null :timeslots, :reservations_count, false
    remove_column :gymnasia, :currentUsers, :integer
  end
end