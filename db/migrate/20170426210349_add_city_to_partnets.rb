class AddCityToPartnets < ActiveRecord::Migration[5.0]
  def change
    add_column :partners, :city, :string
  end
end
