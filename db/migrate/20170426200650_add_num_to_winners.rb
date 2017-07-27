class AddNumToWinners < ActiveRecord::Migration[5.0]
  def change
    add_column :winners, :num, :integer
  end
end
