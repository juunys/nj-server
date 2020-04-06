class Order < ApplicationRecord
	belongs_to :sequencial_code
	belongs_to :user
	belongs_to :product

	validates :sequencial_code_id, uniqueness: true
end
