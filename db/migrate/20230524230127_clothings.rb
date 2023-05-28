class Clothings < ActiveRecord::Migration[7.0]
  def change
    create_table :clothings do |t|
      t.string :cloth_type
    end
  end
end
