class AddLatitudeAndLongitudeToFestPage < ActiveRecord::Migration[5.0]
  def change
    add_column :fest_pages, :latitude, :float
    add_column :fest_pages, :longitude, :float
  end
end
