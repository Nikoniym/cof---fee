class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.attachment :image_vertical
      t.attachment :image_horizontal
      t.attachment :image_square
      t.string :link
      t.integer :position
      t.boolean :main_page
      t.boolean :fest_page
      t.boolean :award_page
      t.boolean :news_page
      t.boolean :gallery_page
      t.boolean :cup_page
      t.boolean :organizers_page
      t.boolean :contact_page

      t.timestamps
    end
  end
end
