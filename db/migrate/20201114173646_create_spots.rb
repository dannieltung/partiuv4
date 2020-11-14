class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :address
      t.integer :crowd_congestion
      t.text :description

      t.timestamps
    end
  end
end
