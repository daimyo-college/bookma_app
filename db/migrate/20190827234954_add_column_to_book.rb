class AddColumnToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :author, :string
    add_column :books, :imageurl, :string
    add_column :books, :caption, :text
  end
end
