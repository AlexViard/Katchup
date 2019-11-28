class AjoutColumn < ActiveRecord::Migration[5.2]
  def change
  	add_column :orders, :prix_total, :decimal
  end
end
