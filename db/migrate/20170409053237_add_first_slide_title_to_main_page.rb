class AddFirstSlideTitleToMainPage < ActiveRecord::Migration[5.0]
  def change
    add_column :main_pages, :first_slide_title, :string
  end
end
