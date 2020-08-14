# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'
require 'faker'

search = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
json = JSON.parse(search.read)
json = json["drinks"]
json.each do |ingr|
 ingredient = Ingredient.create(name: ingr["strIngredient1"])
 puts ingredient.name
end

10.times do
  Cocktail.create(name: Faker::TvShows::RuPaul.queen)
end


# json.each do
#   ["strIngredient1"]
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
