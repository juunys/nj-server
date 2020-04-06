class User < ApplicationRecord
  	belongs_to :user_role
  	belongs_to :status_user
  	has_one :address, dependent: :destroy
  	has_many :orders, dependent: :destroy

  	has_secure_password
	validates :email, uniqueness: true
	validates :status_user_id, uniqueness: true

	def user_role
		UserRole.find_by(id: self.user_role_id)
	end
end
