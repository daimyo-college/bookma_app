class AddListIdToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :list_id, :integer
  end
end
