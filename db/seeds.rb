# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all

picture_tab = ["../app/assets/images/1.jpg","../app/assets/images/2.jpg","../app/assets/images/3.jpg","../app/assets/images/4.jpg","../app/assets/images/5.jpg","../app/assets/images/6.jpg","../app/assets/images/7.jpg","../app/assets/images/8.jpg","../app/assets/images/9.jpg","../app/assets/images/10.jpg"]

picture_tab_2 = []

i =  0

while i < picture_tab.length
  picture_tab_2 << picture_tab[i]
  i = i + 1
end


10.times do |index|

  Item.create(title: Faker::Food.vegetables, descript: Faker::Lorem.sentences, price: Faker::Number.decimal(l_digits: 2), image_url: picture_tab_2[index])

end
