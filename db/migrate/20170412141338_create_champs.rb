class CreateChamps < ActiveRecord::Migration[5.0]
  def change
    create_table :champs do |t|
    	t.string :title
    	t.string :name_1
    	t.string :name_2
    	t.string :name_3

      t.timestamps
    end
  end
end
