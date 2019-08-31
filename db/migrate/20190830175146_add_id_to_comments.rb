class AddIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :user_id, :string
    add_column :comments, :book_id, :string
  end
end
