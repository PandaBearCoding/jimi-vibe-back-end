class User < ApplicationRecord
    has_many :favorites 
    has_many :products, through: :favorites 
    
    has_many :carts 
    has_many :products, through: :carts 

    accepts_nested_attributes_for :favorites
    accepts_nested_attributes_for :carts

    # methods to be able to display information from the join table
    # must add methods as attributes on serializer
    # must change syntax once Auth is added
    def favorited_items
        User.first.favorites.map {|fi| fi.product}
    end 

    def cart_items
        User.first.carts.map {|ci| ci.product}
    end 
end
