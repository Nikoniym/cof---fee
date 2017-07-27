class AddSeoToGaleriePage < ActiveRecord::Migration[5.0]
  def change
    add_column :galerie_pages, :page_title_seo, :text
    add_column :galerie_pages, :description_seo, :text
    add_column :galerie_pages, :keywords_seo, :text
  end
end
