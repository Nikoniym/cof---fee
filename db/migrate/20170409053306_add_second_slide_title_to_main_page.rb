class AddSecondSlideTitleToMainPage < ActiveRecord::Migration[5.0]
  def change
    add_column :main_pages, :second_slide_title, :string
  end
end
