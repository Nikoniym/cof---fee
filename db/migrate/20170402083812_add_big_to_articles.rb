class AddBigToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :big, :boolean
  end
end
