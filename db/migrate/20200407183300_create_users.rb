class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :date_of_birth
      t.string :avatar
      t.string :activation_code
      t.string :cpf
      t.references :user_role, foreign_key: true
      t.references :status_user, foreign_key: true

      t.timestamps
    end
    add_index :users, :cpf
  end
end
