class RemoveCurrentLocationFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :current_location
  end
end
