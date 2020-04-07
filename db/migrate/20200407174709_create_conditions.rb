class CreateConditions < ActiveRecord::Migration[5.1]
  def change
    create_table :conditions do |t|
      t.string :name, null: false
      t.string :query_name, null: false

      t.timestamps
    end
    add_index :conditions, :query_name
  end
end
