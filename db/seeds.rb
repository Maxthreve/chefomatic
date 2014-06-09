# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

allergens = ["gluten", "lactose", "magic mushroom"]
ingredients = ["wheat", "milk", "mysterious powder from a witches pocket"]

3.times do |item|
  allergen = Allergen.create({name: allergens[item]})
  allergen.ingredients.create({name: ingredients[item]})
end

  