class CreatePartners < ActiveRecord::Migration[5.0]
  def change
    create_table :partners do |t|
    	t.text :body
    	t.string :link
    	

      t.timestamps
    end
  end
end
