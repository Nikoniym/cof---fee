class CreateFirsttabs < ActiveRecord::Migration[5.0]
  def change
    create_table :firsttabs do |t|
      t.string :title

      t.timestamps
    end
  end
end
