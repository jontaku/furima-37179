class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category, :condition, :shipping_charge, :prefecture, :shipping_day

  
  validates :genre_id, numericality: { other_than: 1 } 
end
