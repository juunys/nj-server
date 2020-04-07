class StatusProduct < ApplicationRecord
	has_many :products, dependent: :destroy

	validates :name, uniqueness: true, presence: true
	validates :query_name, uniqueness: true, presence: true
end
