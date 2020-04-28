# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all
Comment.destroy_all
PostCategory.destroy_all
Post.destroy_all
User.destroy_all

code = Category.create(name: 'Code')
bikes = Category.create(name: 'Bikes')
fire = Category.create(name: 'Fire Spinning')

mishy = User.create(username: 'mishy', email: 'user@mishyjari.com')

post1 = Post.create(title: 'Just some associations', content: "Lorem ipsum dolor...")

comment1 = Comment.create(content: "I am commenting", user_id: mishy.id, post_id: post1.id)

postcat1 = PostCategory.create(post_id: post1.id, category_id: code.id)
