class AddBooToPartnets < ActiveRecord::Migration[5.0]
  def change
    add_column :partners, :main_page, :boolean
    add_column :partners, :fest_page, :boolean
    add_column :partners, :award_page, :boolean
  end
end
