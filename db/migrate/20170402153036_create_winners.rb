class CreateWinners < ActiveRecord::Migration[5.0]
  def change
    create_table :winners do |t|
    	t.string :work
    	t.string :name

      t.timestamps
    end
  end
end
