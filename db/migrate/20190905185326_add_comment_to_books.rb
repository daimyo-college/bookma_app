class AddCommentToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :comment, :text
  end
end
