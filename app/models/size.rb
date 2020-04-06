class Size < ApplicationRecord
	has_many :products, dependent: :destroy

	validates :name, uniqueness: true
	validates :query_name, uniqueness: true
end
