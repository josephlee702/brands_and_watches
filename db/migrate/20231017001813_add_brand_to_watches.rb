class AddBrandToWatches < ActiveRecord::Migration[7.0]
  def change
    add_reference :watches, :brand, null: false, foreign_key: true, type: :uuid
  end
end
