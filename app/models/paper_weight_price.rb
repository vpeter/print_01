class PaperWeightPrice < ActiveRecord::Base
  belongs_to :paper_type
  has_many :order_items
end
