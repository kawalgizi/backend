class AddBrandToProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :brand_id
    add_reference :products, :brand, foreign_key: true
  end
end
