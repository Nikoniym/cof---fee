class CreateFestPages < ActiveRecord::Migration[5.0]
  def change
    create_table :fest_pages do |t|
    	t.string :page_title
    	t.string :first_slide_title
    	t.text :first_slide_text
    	t.string :second_slide_title
    	t.text :second_slide_text
    	t.string :third_slide_title
    	t.text :third_slide_text
    	t.text :some_text
    	t.string :adress
    	t.string :fb_link
    	t.string :vk_link



      t.timestamps
    end
  end
end
