class CreateGaleriePages < ActiveRecord::Migration[5.0]
  def change
    create_table :galerie_pages do |t|
      t.string :page_title

      t.timestamps
    end
  end
end
