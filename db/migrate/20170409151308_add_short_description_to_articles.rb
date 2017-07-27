class AddShortDescriptionToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :short, :text
  end
end
