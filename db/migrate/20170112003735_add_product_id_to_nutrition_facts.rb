class AddProductIdToNutritionFacts < ActiveRecord::Migration[5.0]
  def change
    add_column :nutrition_facts, :product_id, :integer
  end
end
