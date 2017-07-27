class AddShitToMaps < ActiveRecord::Migration[5.0]
  def change
    add_column :maps, :type_of_shit, :string
  end
end
