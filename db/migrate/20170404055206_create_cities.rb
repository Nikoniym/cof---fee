class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
    	t.string :title
    	t.text :body
    	t.string :date_range
    	t.string :city_name
    	t.string :adress

      t.timestamps
    end
  end
end
