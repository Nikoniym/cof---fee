class CreateCoffeehouses < ActiveRecord::Migration[5.0]
  def change
    create_table :coffeehouses do |t|
      t.string :link
      t.text :body

      t.timestamps
    end
  end
end
