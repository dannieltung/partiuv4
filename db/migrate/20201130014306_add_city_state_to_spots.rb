class AddCityStateToSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :city, :string
    add_column :spots, :state, :string
  end
end
