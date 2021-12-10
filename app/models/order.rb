class Order < ApplicationRecord
  belongs_to :item
  belongs_to :user
  has_one :address
  attr_accessor :token
end
