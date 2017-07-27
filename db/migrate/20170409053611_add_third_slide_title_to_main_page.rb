class AddThirdSlideTitleToMainPage < ActiveRecord::Migration[5.0]
  def change
    add_column :main_pages, :third_slide_title, :string
  end
end
