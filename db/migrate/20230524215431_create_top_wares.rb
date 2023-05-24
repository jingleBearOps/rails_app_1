class CreateTopWares < ActiveRecord::Migration[7.0]
  def change
    create_table :top_wares do |t|
      t.string :style
      t.text :description
      t.integer :price
      t.string :origin

      t.timestamps
    end
  end
end
