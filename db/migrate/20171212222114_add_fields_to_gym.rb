class AddFieldsToGym < ActiveRecord::Migration
  def change
    add_column :gymnasia, :description, :text
    add_column :gymnasia, :image, :string
    add_column :gymnasia, :info_url, :string
    add_column :gymnasia, :open_hour, :integer
    add_column :gymnasia, :close_hour, :integer
  end
end
