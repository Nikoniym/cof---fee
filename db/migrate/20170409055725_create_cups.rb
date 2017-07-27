class CreateCups < ActiveRecord::Migration[5.0]
  def change
    create_table :cups do |t|
    	t.string :page_title
    	t.text :some_text

      t.timestamps
    end
  end
end