class AddThirdSlideTextToMainPage < ActiveRecord::Migration[5.0]
  def change
    add_column :main_pages, :third_slide_text, :text
  end
end
