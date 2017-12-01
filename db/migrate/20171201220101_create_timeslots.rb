class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :total_reservations
      t.integer :gym_id, index: true

      t.timestamps
    end
    add_foreign_key :timeslots, :gym
  end
end
