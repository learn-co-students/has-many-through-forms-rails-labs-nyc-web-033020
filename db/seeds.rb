# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

User.destroy_all
Post.destroy_all
Category.destroy_all
Comment.destroy_all

10.times { User.create(username: Faker::Internet.username, email: Faker::Internet.email)}
20.times { Post.create(title: Faker::Book.title, content: Faker::Quote.famous_last_words)}
20.times { Category.create(name: Faker::Book.genre)}

users = User.all
posts = Post.all
categories = Category.all


40.times { 
  Comment.create(
  content: Faker::Quote.singular_siegler, 
  user_id: users.sample.id,
  post_id: posts.sample.id
  )
}

20.times { 
  PostCategory.create(
  post_id: posts.sample.id,
  category_id: categories.sample.id
  )
}