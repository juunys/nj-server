class CreateUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles do |t|
      t.string :name, null: false
      t.string :query_name, null: false

      t.timestamps
    end
    add_index :user_roles, :query_name
  end
end
