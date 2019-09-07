class ChangeCommentOfBooks < ActiveRecord::Migration[5.2]
  def change
    change_column_null :books, :comment, false, 0
  end
end
