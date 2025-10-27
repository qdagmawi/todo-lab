class CreateFriendRequests < ActiveRecord::Migration[8.0]
  def change
    create_table :friend_requests do |t|
      t.integer :status, null: false, default: 0
      t.references :sender, null: false, foreign_key: { to_table: :users }
      t.references :receiver, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
