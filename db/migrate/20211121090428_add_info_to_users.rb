class AddInfoToUsers < ActiveRecord::Migration[6.1]
    def change
      add_column :users, :name, :string
      add_column :users, :age, :integer
      add_column :users, :gender, :string
      add_column :users, :height, :float
    end
  end