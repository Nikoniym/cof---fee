class AddSeoToContactPage < ActiveRecord::Migration[5.0]
  def change
    add_column :contact_pages, :page_title_seo, :text
    add_column :contact_pages, :description_seo, :text
    add_column :contact_pages, :keywords_seo, :text
  end
end
