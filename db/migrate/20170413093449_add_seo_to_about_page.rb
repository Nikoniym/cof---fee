class AddSeoToAboutPage < ActiveRecord::Migration[5.0]
  def change
    add_column :about_pages, :page_title_seo, :text
    add_column :about_pages, :description_seo, :text
    add_column :about_pages, :keywords_seo, :text
  end
end
