class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :brand_id
      t.string :bpom_id
      t.string :name

      t.timestamps
    end
  end
end
