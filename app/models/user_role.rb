class UserRole < ApplicationRecord
	has_many :users, dependent: :destroy

	validates :name, uniqueness: true
	validates :query_name, uniqueness: true
end
