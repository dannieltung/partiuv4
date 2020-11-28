class RemoveFieldDescriptionFromTableSpots < ActiveRecord::Migration[6.0]
  def change
    remove_column :spots, :description
  end
end
