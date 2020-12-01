class AddStreetAndNumberToSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :number, :integer
    add_column :spots, :street, :string
  end
end
