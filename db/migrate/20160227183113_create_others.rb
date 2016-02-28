class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
      t.integer :user_id
      t.integer :member_id
      t.string :purpose
      t.string :amount
      t.text :comment

      t.timestamps null: false
    end
  end
end
