class AddFavSpotToFavorite < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :fav_spot, :string
  end
end
