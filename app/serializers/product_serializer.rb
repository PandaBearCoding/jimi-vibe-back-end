class ProductSerializer < ActiveModel::Serializer
  attributes :image, :description, :price
  
  has_many :favorites
  has_many :carts
end
