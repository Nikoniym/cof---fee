class AddSeoToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :page_title_seo, :text
    add_column :articles, :description_seo, :text
    add_column :articles, :keywords_seo, :text
  end
end
