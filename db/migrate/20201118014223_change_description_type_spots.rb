class ChangeDescriptionTypeSpots < ActiveRecord::Migration[6.0]
  def change
    change_column :spots, :description, :string
  end
end
