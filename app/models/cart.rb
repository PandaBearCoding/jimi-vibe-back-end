class Cart < ApplicationRecord
    belongs_to :user
    belongs_to :product

    accepts_nested_attributes_for :product

    validates :product_id, uniqueness: {scope: :user_id,  message: "This product has already been added to your favorites. This is your sign to buy it before someone else does!"}
end
