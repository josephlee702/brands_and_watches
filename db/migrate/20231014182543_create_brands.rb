class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands, id: :uuid do |t|
      t.string :name
      t.string :country
      t.integer :year_founded

      t.timestamps
    end
  end
end
