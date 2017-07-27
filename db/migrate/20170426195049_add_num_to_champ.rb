class AddNumToChamp < ActiveRecord::Migration[5.0]
  def change
    add_column :champs, :num, :integer
  end
end
