class PaperType < ActiveRecord::Base
  belongs_to :paper_category
  has_many :paper_weight_prices
  has_many :order_items
end
