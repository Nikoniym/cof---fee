class AddMoreNumToPartners < ActiveRecord::Migration[5.0]
  def change
    add_column :partners, :fest_num, :integer
    add_column :partners, :award_num, :integer
  end
end
