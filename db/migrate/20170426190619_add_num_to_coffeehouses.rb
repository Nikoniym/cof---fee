class AddNumToCoffeehouses < ActiveRecord::Migration[5.0]
  def change
    add_column :coffeehouses, :num, :integer
  end
end
