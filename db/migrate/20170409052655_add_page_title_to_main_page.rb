class AddPageTitleToMainPage < ActiveRecord::Migration[5.0]
  def change
    add_column :main_pages, :page_title, :string
  end
end
