class CreateGenders < ActiveRecord::Migration[5.1]
  def change
    create_table :genders do |t|
      t.string :name, null: false
      t.string :query_name, null: false

      t.timestamps
    end
    add_index :genders, :query_name
  end
end
