class Photo < ApplicationRecord
	has_many :products, dependent: :destroy
end
