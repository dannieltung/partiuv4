class ChangeLevelFormatOnCrowdnesses < ActiveRecord::Migration[6.0]
  def change
    change_column :crowdnesses, :level, :string
  end
end
