class CreateBazars < ActiveRecord::Migration
  def change
    create_table :bazars do |t|
      t.integer :user_id
      t.integer :member_id
      t.text :item_details
      t.string :total
      t.text :comment

      t.timestamps null: false
    end
  end
end
