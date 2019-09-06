class ChangeBookNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :shopurl, :string, null: false
    change_column :books, :author, :text, null: false
    change_column :books, :imageurl, :string, null: false
    change_column :books, :caption, :text, null: false
    change_column :books, :comment, :text, null: false
  end
end
