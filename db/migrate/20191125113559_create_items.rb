class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
    	t.string :title
    	t.text :descript
    	t.decimal :price
    	t.string :image_url
      t.timestamps
    end
  end
end
