class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :group_id,          null: false
      t.integer :member_id,         null: false
      t.text    :introduction,      null: false
      t.timestamps
    end
    
    add_index :subscriptions, :group_id
    add_index :subscriptions, :member_id
    add_index :subscriptions, [:group_id, :member_id], unique: true
  end
end
