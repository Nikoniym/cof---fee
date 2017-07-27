class AddPositionToFirsttabs < ActiveRecord::Migration[5.0]
  def change
    add_column :firsttabs, :position, :integer
  end
end
