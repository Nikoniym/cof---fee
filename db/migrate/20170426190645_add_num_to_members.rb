class AddNumToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :num, :integer
  end
end
