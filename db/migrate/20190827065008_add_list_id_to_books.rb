class AddListIdToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :list_id, :integer
  end
end
