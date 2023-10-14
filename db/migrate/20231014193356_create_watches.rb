class CreateWatches < ActiveRecord::Migration[7.0]
  def change
    create_table :watches do |t|
      t.integer :brand_id
      t.string :model
      t.string :bracelet
      t.string :movement
      t.string :case_material
      t.integer :case_size
      t.boolean :crown_guard

      t.timestamps
    end
  end
end
