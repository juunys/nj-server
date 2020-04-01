class CreateGenders < ActiveRecord::Migration[5.1]
  def change
    create_table :genders do |t|
      t.string :name
      t.string :query_name

      t.timestamps
    end
  end
end
