class RemoveFavSpotFromFavorites < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorites, :fav_spot
  end
end
