# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 require 'faker'

6.times do |n|
  body = Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
  body2 = Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
  p = Post.new(title: Faker::Artist.name, body:  "#{body}<br><br>#{body2}<br><br>#{body}" )
  p.save
end

 p = Post.all
 p.each do |p|
  3.times do |n|
    comment = Comment.new(body: Faker::Quotes::Chiquito.sentence)
    comment.post = p
    comment.save
  end
 end