class CreateAwardPages < ActiveRecord::Migration[5.0]
  def change
    create_table :award_pages do |t|
    	t.string :page_title
    	t.string :pic_title
    	t.string :pic_text
    	t.text :some_text

      t.timestamps
    end
  end
end
