class AddNumToAwards < ActiveRecord::Migration[5.0]
  def change
    add_column :awards, :num, :integer
  end
end
