class AddTimestampsToClothing < ActiveRecord::Migration[7.0]
  def change
    add_column :clothings, :created_at, :datetime
    add_column :clothings, :updated_at, :datetime
  end
end
