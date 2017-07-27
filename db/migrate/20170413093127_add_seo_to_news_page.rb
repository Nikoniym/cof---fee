class AddSeoToNewsPage < ActiveRecord::Migration[5.0]
  def change
    add_column :news_pages, :page_title_seo, :text
    add_column :news_pages, :description_seo, :text
    add_column :news_pages, :keywords_seo, :text
  end
end
