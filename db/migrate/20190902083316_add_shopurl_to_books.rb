class AddShopurlToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :shopurl, :string
  end
end
