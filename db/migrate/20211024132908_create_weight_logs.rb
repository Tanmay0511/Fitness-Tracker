class CreateWeightLogs < ActiveRecord::Migration[6.1]
    def change
      create_table :weight_logs do |t|
        t.references :user, null: false, foreign_key: true
        t.float :weight
        t.text :notes
  
        t.timestamps
      end
    end
  end