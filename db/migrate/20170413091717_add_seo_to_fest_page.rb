class AddSeoToFestPage < ActiveRecord::Migration[5.0]
  def change
    add_column :fest_pages, :page_title_seo, :text
    add_column :fest_pages, :description_seo, :text
    add_column :fest_pages, :keywords_seo, :text
  end
end
