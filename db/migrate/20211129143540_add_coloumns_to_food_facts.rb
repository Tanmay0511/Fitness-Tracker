class AddColumnsToFoodFact < ActiveRecord::Migration[6.1]
    def change
      add_column :food_facts, :serving_description, :string
      add_column :food_facts, :serving_weight, :float
    end
  end