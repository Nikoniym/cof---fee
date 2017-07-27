class AddAttachmentAvatarToOldwiners < ActiveRecord::Migration
  def self.up
    change_table :oldwiners do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :oldwiners, :avatar
  end
end
