# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'csv'

CSV.foreach(Rails.root.join('lib/seed_csv/food_fact.csv'), headers: true) do |row|
  FoodFact.create( {
    name: row["name"], 
    food_group: row["food_group"],
    calories: row["calories"], 
    fat: row["fat"],
    cholestrol: row["cholestrol"],
    sodium: row["sodium"],
    carbohydrate: row["carbohydrate"],
    fiber: row["fiber"],
    sugar: row["sugar"],
    protein: row["protein"],
    vitamind: row["vitamind"],
    calcium: row["calcium"],
    iron: row["iron"],
    potassium: row["potassium"],
    serving_description: row["serving_description"],
    serving_weight: row["serving_weight"],
  } ) 
end