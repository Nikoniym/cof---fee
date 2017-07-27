class AddBodyToGaleries < ActiveRecord::Migration[5.0]
  def change
    add_column :galeries, :body, :text
  end
end
