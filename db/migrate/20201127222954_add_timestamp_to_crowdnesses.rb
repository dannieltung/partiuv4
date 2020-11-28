class AddTimestampToCrowdnesses < ActiveRecord::Migration[6.0]
  def change
    change_table(:crowdnesses) { |t| t.timestamps }
  end
end
