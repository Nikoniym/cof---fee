class AddCityNumToPartners < ActiveRecord::Migration[5.0]
  def change
    add_column :partners, :city_num, :integer
  end
end
