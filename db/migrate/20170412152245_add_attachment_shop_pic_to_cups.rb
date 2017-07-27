class AddAttachmentShopPicToCups < ActiveRecord::Migration
  def self.up
    change_table :cups do |t|
      t.attachment :shop_pic
    end
  end

  def self.down
    remove_attachment :cups, :shop_pic
  end
end
