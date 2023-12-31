# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Destroying all Article..."
Article.destroy_all
puts "DONE!"

puts "Creating 10 fake article..."
10.times do
  article = Article.create!(
    title: Faker::TvShows::DumbAndDumber.quote,  
    content: Faker::String.random(length: 30..100)
  )
  puts "#{article.title} created."
end

puts "DONE!!"
