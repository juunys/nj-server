class Product < ApplicationRecord
  belongs_to :condition
  belongs_to :store
  belongs_to :size
  belongs_to :status_product
  belongs_to :photo
  belongs_to :gender
end
