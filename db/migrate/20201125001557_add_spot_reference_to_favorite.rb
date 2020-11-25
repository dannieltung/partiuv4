class AddSpotReferenceToFavorite < ActiveRecord::Migration[6.0]
  def change
    add_reference :favorites, :spot, index: true
    add_foreign_key :favorites, :spots
  end
end
