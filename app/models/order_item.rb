class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :print
  belongs_to :paper_weight_price
  belongs_to :paper_type
  belongs_to :product_type
  belongs_to :document
end
