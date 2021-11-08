class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :start_weight, :float
    add_column :users, :goal_weight, :float
  end
end
