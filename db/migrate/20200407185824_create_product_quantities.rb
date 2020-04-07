class CreateProductQuantities < ActiveRecord::Migration[5.1]
  def change
    create_table :product_quantities do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
