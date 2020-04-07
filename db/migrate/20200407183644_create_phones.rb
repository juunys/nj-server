class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :ddd
      t.string :number, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :phones, :ddd
  end
end
