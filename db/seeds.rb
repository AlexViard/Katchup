# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
User.destroy_all
Cart.destroy_all

picture_tab = ["https://cdn.pixabay.com/photo/2018/03/27/17/25/cat-3266673_960_720.jpg", "https://cdn.pixabay.com/photo/2018/10/01/09/21/pets-3715733_960_720.jpg", "https://cdn.pixabay.com/photo/2018/07/13/10/20/cat-3535404_960_720.jpg", "https://cdn.pixabay.com/photo/2017/03/14/14/49/cat-2143332_960_720.jpg", "https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg", "https://cdn.pixabay.com/photo/2014/11/30/14/11/kitty-551554_960_720.jpg", "https://cdn.pixabay.com/photo/2016/07/10/21/47/cat-1508613_960_720.jpg", "https://cdn.pixabay.com/photo/2016/03/28/12/35/cat-1285634_960_720.png", "https://cdn.pixabay.com/photo/2015/06/08/15/02/pug-801826_960_720.jpg", "https://cdn.pixabay.com/photo/2014/04/13/20/49/cat-323262_960_720.jpg", "https://cdn.pixabay.com/photo/2017/08/07/18/57/dog-2606759_960_720.jpg", "https://cdn.pixabay.com/photo/2015/02/25/17/56/cat-649164_960_720.jpg", "https://cdn.pixabay.com/photo/2019/06/18/11/32/cat-4282123_960_720.jpg", "https://cdn.pixabay.com/photo/2016/11/19/17/33/animal-1840495_960_720.jpg", "https://cdn.pixabay.com/photo/2016/11/29/13/52/animal-1870003_960_720.jpg", "https://cdn.pixabay.com/photo/2015/02/25/17/56/cat-649164_960_720.jpg"]

picture_tab_2 = []

i =  0
u = []
item = []


while i < picture_tab.length
  picture_tab_2 << picture_tab[i]
  i = i + 1
end

<<<<<<< HEAD


16.times do |index|

item_new =  Item.create(title: Faker::Food.vegetables, descript: Faker::Lorem.sentence(word_count: 10), price: Faker::Number.decimal(l_digits: 2), image_url: picture_tab_2[index])
item  << item_new

=======

10.times do |index|
  item << Item.create(title: Faker::Food.vegetables, descript: Faker::Lorem.sentence(word_count: 10), price: Faker::Number.decimal(l_digits: 2), image_url: picture_tab_2[index])
>>>>>>> af04e291064742c1db4841ac8632ecee9a1da73b
end

10.times do |index|
	u << User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Name.first_name + "@yopmail.com", password:"ludovic")
end

5.times do |index|
<<<<<<< HEAD

	Cart.create(user_id: user.sample.id, item_id: item.sample.id)
end

=======
	Cart.create(user_id: user.sample.id, item_id: item.sample.id)
end
>>>>>>> af04e291064742c1db4841ac8632ecee9a1da73b
