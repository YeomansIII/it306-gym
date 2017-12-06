class ChangeTimeslotToHourly < ActiveRecord::Migration
  def change
    rename_column :timeslots, :start_time, :date
    rename_column :timeslots, :gym_id, :gymnasia_id
    remove_column :timeslots, :end_time, :datetime
    add_column :timeslots, :hour, :integer
    add_index :timeslots, :date
  end
end
