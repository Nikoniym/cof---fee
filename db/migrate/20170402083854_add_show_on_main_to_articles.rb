class AddShowOnMainToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :show_on_main, :boolean
  end
end
