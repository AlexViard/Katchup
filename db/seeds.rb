# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all

picture_tab = ["https://cdn.pixabay.com/photo/2018/03/27/17/25/cat-3266673_960_720.jpg", "https://cdn.pixabay.com/photo/2016/05/15/03/29/cat-1393075_960_720.jpg", "https://cdn.pixabay.com/photo/2013/05/30/18/21/tabby-114782_960_720.jpg", "https://cdn.pixabay.com/photo/2018/07/13/10/20/cat-3535404_960_720.jpg", "https://cdn.pixabay.com/photo/2017/03/14/14/49/cat-2143332_960_720.jpg", "https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg", "https://cdn.pixabay.com/photo/2014/11/30/14/11/kitty-551554_960_720.jpg", "https://cdn.pixabay.com/photo/2016/07/10/21/47/cat-1508613_960_720.jpg", "https://cdn.pixabay.com/photo/2016/03/28/12/35/cat-1285634_960_720.png", "https://cdn.pixabay.com/photo/2015/06/08/15/02/pug-801826_960_720.jpg"]

picture_tab_2 = []
user = []

item = []
i =  0

User.create(first_name: "Alex", last_name: "Viard", email: "alex-viard@hotmail.fr" , password:"trucbidule", is_admin: true)

while i < picture_tab.length
  picture_tab_2 << picture_tab[i]
  i = i + 1
end


10.times do |index|

item_new =  Item.create(title: Faker::Food.vegetables, descript: Faker::Lorem.sentence(word_count: 10), price: Faker::Number.decimal(l_digits: 2), image_url: picture_tab_2[index])
item  << item_new
end

10.times do |index|
	user << User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

5.times do |index|
	Cart.create(user_id: user.sample.id, item_id: item.sample.id)
end

20.times do |index|
	 User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Name.first_name + "@yopmail.com", password:"trucbidule")
end
