class ProductType < ActiveRecord::Base
  belongs_to :product_category
  has_many :order_items
end
