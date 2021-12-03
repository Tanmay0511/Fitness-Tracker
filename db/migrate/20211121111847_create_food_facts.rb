class CreateFoodFacts < ActiveRecord::Migration[6.1]
    def change
      create_table :food_facts do |t|
        t.string :name
        t.string :food_group
        t.float :calories
        t.float :fat
        t.float :cholestrol
        t.float :sodium
        t.float :carbohydrate
        t.float :fiber
        t.float :sugar
        t.float :protein
        t.float :vitamind
        t.float :calcium
        t.float :iron
        t.float :potassium
  
        t.timestamps
      end
    end
  end