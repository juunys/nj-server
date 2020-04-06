class StatusUser < ApplicationRecord
	has_many :users, dependent: :destroy
end
