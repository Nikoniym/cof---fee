class AddSeoToMainPage < ActiveRecord::Migration[5.0]
  def change
    add_column :main_pages, :page_title_seo, :text
    add_column :main_pages, :description_seo, :text
    add_column :main_pages, :keywords_seo, :text
  end
end
