class User < ApplicationRecord
  	belongs_to :user_role
  	has_one :address, dependent: :destroy
  	has_many :orders, dependent: :destroy

  	has_secure_password
	validates :email, uniqueness: true

	def user_role
		UserRole.find_by(id: self.user_role_id)
	end
end
