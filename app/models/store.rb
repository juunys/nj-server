class Store < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy

  validates :user_id, uniqueness: true
end
