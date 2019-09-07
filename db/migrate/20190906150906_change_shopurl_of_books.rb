class ChangeShopurlOfBooks < ActiveRecord::Migration[5.2]
  def change
    change_column_null :books, :shopurl, false, 0
  end
end
