class AddSeoToGalerie < ActiveRecord::Migration[5.0]
  def change
    add_column :galeries, :page_title_seo, :text
    add_column :galeries, :description_seo, :text
    add_column :galeries, :keywords_seo, :text
  end
end
