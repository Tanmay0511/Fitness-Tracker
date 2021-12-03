class CreateFoodTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :food_tracks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :food_fact, null: false, foreign_key: true
      t.timestamps
    end
  end
end
