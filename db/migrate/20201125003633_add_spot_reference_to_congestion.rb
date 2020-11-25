class AddSpotReferenceToCongestion < ActiveRecord::Migration[6.0]
  def change
    add_reference :congestions, :spot, index: true
    add_foreign_key :congestions, :spots
  end
end
