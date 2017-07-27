class AddAttachmentShopPic2ToCups < ActiveRecord::Migration
  def self.up
    change_table :cups do |t|
      t.attachment :shop_pic_2
    end
  end

  def self.down
    remove_attachment :cups, :shop_pic_2
  end
end
