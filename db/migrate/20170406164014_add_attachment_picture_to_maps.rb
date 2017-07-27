class AddAttachmentPictureToMaps < ActiveRecord::Migration
  def self.up
    change_table :maps do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :maps, :picture
  end
end
