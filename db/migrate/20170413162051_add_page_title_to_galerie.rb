class AddPageTitleToGalerie < ActiveRecord::Migration[5.0]
  def change
    add_column :galeries, :page_title, :string
  end
end
