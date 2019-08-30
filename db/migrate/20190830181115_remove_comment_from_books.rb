class RemoveCommentFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :comment, :string
  end
end
