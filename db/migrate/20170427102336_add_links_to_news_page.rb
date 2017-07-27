class AddLinksToNewsPage < ActiveRecord::Migration[5.0]
  def change
    add_column :news_pages, :slider_link_1, :string
    add_column :news_pages, :slider_link_2, :string
    add_column :news_pages, :slider_link_3, :string
  end
end
