class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    	t.string :time_range
    	t.string :place
    	t.text :body
    	t.references :firsttab


      t.timestamps
    end
  end
end
