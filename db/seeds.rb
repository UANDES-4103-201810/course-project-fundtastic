User.create(name:'Cachupin', lastname:'Fernandez', address:'camino del admin', creditcard:'789' , created_at:'2018-05-26 21:31:21', updated_at: '2018-05-26 21:31:21', email: 'c@gmail.com', admin: false, password:'12345678',avatar: File.new('app/assets/images/fondo.png', 'r') )
User.create(name:'admin', lastname:'admin', address:'camino del admin', creditcard:'789' , created_at:'2018-05-26 21:31:21', updated_at: '2018-05-26 21:31:21', email: 'fundtastic2018@gmail.com', admin: true, password:'12345678',avatar: File.new('app/assets/images/Fun.png', 'r') )

Project.create(title: 'galaxy s', info: 'movil for cominication in long distances', goal: 1000, daystogo: '25', release: DateTime.new(2009,9,14,8), user_id: 1,image: File.new('app/assets/images/phone.jpg', 'r'))
Project.create(title: 'volvito', info: 'awesome and safe automovil to go everywhere', goal: 1000, daystogo: '25', release: DateTime.new(2011,9,14,8), user_id: 1,image: File.new('app/assets/images/volvito.jpeg', 'r'))
Project.create(title: 'A320', info: 'awesome and safe airplane to go everywhere', goal: 10000, daystogo: '225', release: DateTime.new(2010,9,14,8), user_id: 1, image: File.new('app/assets/images/plane.jpeg', 'r'))

Category.create(name: 'technology')
Category.create(name: 'car')

ProjectCategory.create(project_id: 1, category_id: 1)
ProjectCategory.create(project_id: 2, category_id: 2)
ProjectCategory.create(project_id: 3, category_id: 2)

Wishlist.create(user_id: 1, project_id: 1)

Promise.create(title: 'Promise1', info: 'a very nice keychan for your volvito', price: 200, date: DateTime.new(2009,9,14,8), project_id: 2, image: File.new('app/assets/images/key.jpg', 'r'))

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
