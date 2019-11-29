class Item < ApplicationRecord
	has_many :carts, through: :cart_item

  	validates :title, presence: true,
	length: {minimum: 5, maximum: 140},
	uniqueness: true

	validates :descript, presence: true,
	length: { minimum: 5, maximum: 1000},
	uniqueness: true

	validates :price, presence: true,
	numericality: { greater_than: 1, less_than: 1000}
end
