class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :avatar
      t.string :background
      t.string :title
      t.text :description
      t.string :url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
