class AddReservationsCountToUser < ActiveRecord::Migration
  def change
    add_column :users, :reservations_count, :integer, :default => 0, :null => false
  end
end
