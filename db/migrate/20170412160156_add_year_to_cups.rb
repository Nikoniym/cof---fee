class AddYearToCups < ActiveRecord::Migration[5.0]
  def change
    add_column :cups, :year, :string
  end
end
