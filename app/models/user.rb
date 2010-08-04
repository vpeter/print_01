class User < ActiveRecord::Base
  has_many :documents
  has_many :addresses
  has_many :orders
end
