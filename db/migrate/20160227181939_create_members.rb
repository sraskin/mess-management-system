class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :user_id
      t.string :member_name
      t.string :member_phone
      t.string :member_address
      t.string :mess_address
      t.boolean :tolet_status
      t.string :tolet_details

      t.timestamps null: false
    end
  end
end
