class UserRole < ApplicationRecord
	has_many :users, dependent: :destroy
end
