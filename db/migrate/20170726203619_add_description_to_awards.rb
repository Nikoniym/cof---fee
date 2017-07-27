class AddDescriptionToAwards < ActiveRecord::Migration[5.0]
  def change
    add_column :awards, :description, :string
  end
end
