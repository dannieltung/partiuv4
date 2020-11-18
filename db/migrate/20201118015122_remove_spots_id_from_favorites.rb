class RemoveSpotsIdFromFavorites < ActiveRecord::Migration[6.0]
  def change
    remove_reference :favorites, :spot, index: true, foreign_key: true
  end
end
