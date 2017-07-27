class AddShopTitleToCups < ActiveRecord::Migration[5.0]
  def change
    add_column :cups, :shop_title, :string
    add_column :cups, :name_1, :string
    add_column :cups, :name_2, :string
    add_column :cups, :name_3, :string
  end
end