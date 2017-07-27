class AddPositionToEventsToCitiesToArticlesToGalerie < ActiveRecord::Migration[5.0]
  def change
    add_column :galeries, :position, :integer
    add_column :events, :position, :integer
    add_column :cities, :position, :integer
    add_column :articles, :position, :integer
  end
end
