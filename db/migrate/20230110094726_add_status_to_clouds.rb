class AddStatusToClouds < ActiveRecord::Migration[7.0]
  def change
    add_column :clouds, :status, :string
  end
end
