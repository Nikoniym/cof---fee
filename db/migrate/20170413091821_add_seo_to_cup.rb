class AddSeoToCup < ActiveRecord::Migration[5.0]
  def change
    add_column :cups, :page_title_seo, :text
    add_column :cups, :description_seo, :text
    add_column :cups, :keywords_seo, :text
  end
end
