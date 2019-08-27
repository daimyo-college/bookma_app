class RemoveListIdFromLists < ActiveRecord::Migration[5.2]
  def change
    remove_column :lists, :list_id, :integer
  end
end
