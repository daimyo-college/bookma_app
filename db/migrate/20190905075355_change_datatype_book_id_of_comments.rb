class ChangeDatatypeBookIdOfComments < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :book_id, :integer
  end
end
