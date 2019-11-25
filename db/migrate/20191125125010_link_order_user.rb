class LinkOrderUser < ActiveRecord::Migration[5.2]
  def change
  	add_reference :orders, :user, foreign_key: true, on_delete: :cascade
  	add_reference :orders, :item, foreign_key: true, on_delete: :cascade
  end
end
