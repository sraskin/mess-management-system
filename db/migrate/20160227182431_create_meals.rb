class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :user_id
      t.integer :member_id
      t.string :date
      t.string :breakfast
      t.string :lunch
      t.string :dinner
      t.string :total
      t.text :comment

      t.timestamps null: false
    end
  end
end
