class RemoveUserIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :user_id, :string
  end
end
