class Gender < ApplicationRecord
	has_many :products, dependent: :destroy
end
