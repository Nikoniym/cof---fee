class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
    	t.string :name
    	t.string :work
    	t.string :phone_1
    	t.string :phone_2
    	t.string :mail


      t.timestamps
    end
  end
end
