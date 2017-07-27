class AddSomeTextToAboutPage < ActiveRecord::Migration[5.0]
  def change
    add_column :about_pages, :some_text, :text
    add_column :about_pages, :some_text_2, :text
  end
end
