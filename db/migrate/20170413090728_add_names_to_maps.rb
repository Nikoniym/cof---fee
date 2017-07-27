class AddNamesToMaps < ActiveRecord::Migration[5.0]
  def change
    add_column :maps, :name_1, :string
    add_column :maps, :name_2, :string
    add_column :maps, :name_3, :string
  end
end
