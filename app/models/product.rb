class Product < ApplicationRecord
    has_many :favorites 
    has_many :users, through: :favorites 

    has_many :carts 
    has_many :users, through: :carts 

end
