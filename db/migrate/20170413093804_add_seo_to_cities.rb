class AddSeoToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :page_title_seo, :text
    add_column :cities, :description_seo, :text
    add_column :cities, :keywords_seo, :text
  end
end
