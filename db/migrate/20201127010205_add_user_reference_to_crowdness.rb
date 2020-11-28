class AddUserReferenceToCrowdness < ActiveRecord::Migration[6.0]
  def change
    add_reference :crowdnesses, :user, index: true
    add_foreign_key :crowdnesses, :users
  end
end
