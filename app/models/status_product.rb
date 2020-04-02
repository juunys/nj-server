class StatusProduct < ApplicationRecord
	has_many :products, dependent: :destroy
end
