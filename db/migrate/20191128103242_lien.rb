class Lien < ActiveRecord::Migration[5.2]
  def change
  	add_reference :carts, :user, foreign_key: true, on_delete: :cascade
  	add_reference :cart_items, :cart, foreign_key: true, on_delete: :cascade
  	add_reference :cart_items, :item, foreign_key: true, on_delete: :cascade
  	add_reference :orders, :cart, foreign_key: true, on_delete: :cascade
  end
end
