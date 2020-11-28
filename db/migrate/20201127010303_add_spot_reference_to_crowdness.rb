class AddSpotReferenceToCrowdness < ActiveRecord::Migration[6.0]
  def change
    add_reference :crowdnesses, :spot, index: true
    add_foreign_key :crowdnesses, :spots
  end
end
