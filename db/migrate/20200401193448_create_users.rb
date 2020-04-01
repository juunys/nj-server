class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.date :date_of_birth
      t.string :avatar
      t.string :activation_code
      t.string :cpf
      t.references :user_role, foreign_key: true

      t.timestamps
    end
  end
end
