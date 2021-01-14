class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :name, :profile_picture, :email, :phone_number, :address, :cc_number, :cc_cvv, :cc_date, :favorited_items, :cart_items
  
  has_many :favorites
  has_many :carts
end
