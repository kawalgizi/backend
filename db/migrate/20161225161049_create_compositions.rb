class CreateCompositions < ActiveRecord::Migration[5.0]
  def change
    create_table :compositions do |t|
      t.string :name
      t.decimal :daily_values
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
