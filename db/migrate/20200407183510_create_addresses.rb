class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :address_number
      t.string :complement
      t.string :neighborhood
      t.string :cep, null: false
      t.string :state
      t.string :city
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :addresses, :cep
    add_index :addresses, :state
    add_index :addresses, :city
  end
end
