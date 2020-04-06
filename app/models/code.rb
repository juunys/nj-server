class Code < ApplicationRecord
	has_one :order, dependent: :destroy

	validates :sequencial_code, uniqueness: true
end
