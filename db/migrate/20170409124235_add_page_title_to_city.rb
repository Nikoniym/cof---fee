class AddPageTitleToCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :page_title, :string
  end
end
