class AddNumToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :num, :integer
  end
end
