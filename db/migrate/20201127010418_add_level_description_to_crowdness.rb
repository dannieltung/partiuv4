class AddLevelDescriptionToCrowdness < ActiveRecord::Migration[6.0]
  def change
    add_column :crowdnesses, :level, :integer
    add_column :crowdnesses, :description, :string
  end
end
