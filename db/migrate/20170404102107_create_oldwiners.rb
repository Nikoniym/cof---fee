class CreateOldwiners < ActiveRecord::Migration[5.0]
  def change
    create_table :oldwiners do |t|
    	t.string :title
    	

      t.timestamps
    end
  end
end
