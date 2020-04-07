class CreateSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :sizes do |t|
      t.string :name, null: false
      t.string :query_name, null: false

      t.timestamps
    end
    add_index :sizes, :query_name
  end
end
