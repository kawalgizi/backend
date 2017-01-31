class CreateNutritionFacts < ActiveRecord::Migration[5.0]
  def change
    create_table :nutrition_facts do |t|
      t.string :nutrition
      t.string :daily_value
      t.string :akg

      t.timestamps
    end
  end
end
