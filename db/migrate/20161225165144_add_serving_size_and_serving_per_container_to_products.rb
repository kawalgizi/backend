class AddServingSizeAndServingPerContainerToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :serving_size, :decimal
    add_column :products, :serving_per_container, :integer
  end
end
