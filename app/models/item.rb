class Item < ApplicationRecord
	has_many :carts
	has_many :users, through: :cart
	has_many :orders
end
