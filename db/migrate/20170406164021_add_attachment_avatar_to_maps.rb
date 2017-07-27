class AddAttachmentAvatarToMaps < ActiveRecord::Migration
  def self.up
    change_table :maps do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :maps, :avatar
  end
end
