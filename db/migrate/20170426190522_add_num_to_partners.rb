class AddNumToPartners < ActiveRecord::Migration[5.0]
  def change
    add_column :partners, :num, :integer
  end
end
