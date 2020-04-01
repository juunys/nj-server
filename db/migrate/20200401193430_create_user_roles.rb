class CreateUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles do |t|
      t.string :name
      t.string :query_name

      t.timestamps
    end
  end
end
