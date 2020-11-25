class AddDescriptionToCongestion < ActiveRecord::Migration[6.0]
  def change
    add_column :congestions, :description, :string
  end
end
