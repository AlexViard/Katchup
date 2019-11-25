class LinkItemsCart < ActiveRecord::Migration[5.2]
  def change
  	add_reference :carts, :item, foreign_key: true, on_delete: :cascade
  	add_reference :carts, :user, foreign_key: true, on_delete: :cascade
  end
end
