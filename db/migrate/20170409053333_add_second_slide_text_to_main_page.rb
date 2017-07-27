class AddSecondSlideTextToMainPage < ActiveRecord::Migration[5.0]
  def change
    add_column :main_pages, :second_slide_text, :string
    add_column :main_pages, :text, :string
  end
end
