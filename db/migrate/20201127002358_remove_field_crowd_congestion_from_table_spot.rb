class RemoveFieldCrowdCongestionFromTableSpot < ActiveRecord::Migration[6.0]
  def change
    remove_column :spots, :crowd_congestion
  end
end
