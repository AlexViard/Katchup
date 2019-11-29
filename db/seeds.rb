# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Order.destroy_all
CartItem.destroy_all
Cart.destroy_all
User.destroy_all
Item.destroy_all






picture_tab = ["https://active-storage-katchup.s3.eu-west-3.amazonaws.com/dog-2606759_640.jpg" , "https://active-storage-katchup.s3.eu-west-3.amazonaws.com/cat-1285634_640.png" , "https://active-storage-katchup.s3.eu-west-3.amazonaws.com/pets-3715733_640.jpg" ,  "https://active-storage-katchup.s3.eu-west-3.amazonaws.com/cat-2143332_640.jpg" , "https://active-storage-katchup.s3.eu-west-3.amazonaws.com/cat-1393075_640.jpg" , "https://active-storage-katchup.s3.eu-west-3.amazonaws.com/cat-1508613_640.jpg" , "https://active-storage-katchup.s3.eu-west-3.amazonaws.com/pug-801826_640.jpg", "https://active-storage-katchup.s3.eu-west-3.amazonaws.com/cat-4611189_640.jpg", "https://active-storage-katchup.s3.eu-west-3.amazonaws.com/cat-3266673_640.jpg" , "https://active-storage-katchup.s3.eu-west-3.amazonaws.com/cat-649164_640.jpg" , "https://active-storage-katchup.s3.eu-west-3.amazonaws.com/cat-323262_640.jpg" , "https://active-storage-katchup.s3.eu-west-3.amazonaws.com/cat-2934720_640.jpg" ,"https://active-storage-katchup.s3.eu-west-3.amazonaws.com/animal-339400_640.jpg" , "https://active-storage-katchup.s3.eu-west-3.amazonaws.com/kitty-2948404_640.jpg"]

picture_tab_2 = []

i =  0
u = []
item = []
c = []



while i < picture_tab.length
  picture_tab_2 << picture_tab[i]
  i = i + 1
end

14.times do |index|
  item << Item.create(title: Faker::Food.vegetables, descript: Faker::Lorem.sentence(word_count: 10), price: Faker::Number.decimal(l_digits: 2), image_url: picture_tab_2[index])
end

10.times do |index|
	u << User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Name.first_name + "@yopmail.com", password:"ludovic")
end

10.times do |index|
	CartItem.create(cart: Cart.find(u.sample.id),item_id: item.sample.id)
end
