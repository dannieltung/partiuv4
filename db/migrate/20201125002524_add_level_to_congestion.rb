class AddLevelToCongestion < ActiveRecord::Migration[6.0]
  def change
    add_column :congestions, :level, :integer
  end
end
