class StatusUser < ApplicationRecord
	has_many :users, dependent: :destroy

	validates :name, uniqueness: true, presence: true
	validates :query_name, uniqueness: true, presence: true
end
