class AddReferenceToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :status_user, foreign_key: true
  end
end
