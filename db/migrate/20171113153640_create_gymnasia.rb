class CreateGymnasia < ActiveRecord::Migration
  def change
    create_table :gymnasia do |t|
      t.string :name
      t.integer :currentUsers
      t.integer :maxUsers

      t.timestamps
    end
  end
end
