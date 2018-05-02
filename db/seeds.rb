Project.create(title: 'galaxy s', info: 'movil for cominication in long distances', goal: 1000, daystogo: '25', user_id: 1)
Project.create(title: 'volvito', info: 'awesome and safe automovil to go everywhere', goal: 1000, daystogo: '25', user_id: 1)

Category.create(name: 'technology', project_id: 1)
Category.create(name: 'car', project_id: 2)

Fund.create(user_id: 1, project_id: 1, cost: 258, stagemail: true, stageaprove: true, stagereceive: true)

Wishlist.create(user_id: 1, project_id: 1)

Promise.create(title: 'Promise1', info: 'a very nice keychan for your volvito', price: 200, project_id: 2)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
