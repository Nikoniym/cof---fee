class AddSeoToAwardPage < ActiveRecord::Migration[5.0]
  def change
    add_column :award_pages, :page_title_seo, :text
    add_column :award_pages, :description_seo, :text
    add_column :award_pages, :keywords_seo, :text
  end
end
