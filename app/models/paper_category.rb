class PaperCategory < ActiveRecord::Base
  has_many :paper_types
end
