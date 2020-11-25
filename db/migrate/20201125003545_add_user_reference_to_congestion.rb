class AddUserReferenceToCongestion < ActiveRecord::Migration[6.0]
  def change
    add_reference :congestions, :user, index: true
    add_foreign_key :congestions, :users
  end
end
