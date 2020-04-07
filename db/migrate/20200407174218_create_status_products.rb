class CreateStatusProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :status_products do |t|
      t.string :name, null: false
      t.string :query_name, null: false

      t.timestamps
    end
    add_index :status_products, :query_name
  end
end
