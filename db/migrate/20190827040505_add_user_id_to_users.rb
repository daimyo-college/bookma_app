class AddUserIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_id, :integer
  end
  add_index :lists, [:user_id, :created_at]
end
