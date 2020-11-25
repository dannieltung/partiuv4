class CreateCongestions < ActiveRecord::Migration[6.0]
  def change
    create_table :congestions do |t|

      t.timestamps
    end
  end
end
