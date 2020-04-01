class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :brand
      t.references :condition, foreign_key: true
      t.references :store, foreign_key: true
      t.references :size, foreign_key: true
      t.references :status_product, foreign_key: true
      t.references :photo, foreign_key: true
      t.references :gender, foreign_key: true

      t.timestamps
    end
  end
end
