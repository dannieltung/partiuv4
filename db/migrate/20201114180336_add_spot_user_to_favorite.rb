class AddSpotUserToFavorite < ActiveRecord::Migration[6.0]
  def change
    add_reference :favorites, :spot, index: true
    add_foreign_key :favorites, :spots
    add_reference :favorites, :user, index: true
    add_foreign_key :favorites, :users
  end
end
