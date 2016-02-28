class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.integer :user_id
      t.integer :member_id
      t.string :date
      t.string :amount
      t.text :comment

      t.timestamps null: false
    end
  end
end
