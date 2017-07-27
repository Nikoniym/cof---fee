class AddDateToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :date_of_event, :datetime
  end
end
