class Code < ApplicationRecord
	has_one :order, dependent: :destroy
end
