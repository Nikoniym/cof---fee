class AddRulesToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :rules, :text
  end
end
