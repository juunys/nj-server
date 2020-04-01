class CreateStatusProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :status_products do |t|
      t.string :name
      t.string :query_name

      t.timestamps
    end
  end
end
