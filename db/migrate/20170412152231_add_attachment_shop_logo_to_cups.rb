class AddAttachmentShopLogoToCups < ActiveRecord::Migration
  def self.up
    change_table :cups do |t|
      t.attachment :shop_logo
    end
  end

  def self.down
    remove_attachment :cups, :shop_logo
  end
end
