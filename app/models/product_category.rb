class ProductCategory < ActiveRecord::Base
  has_many :product_types
end
