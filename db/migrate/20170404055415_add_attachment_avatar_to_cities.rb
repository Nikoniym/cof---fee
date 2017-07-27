class AddAttachmentAvatarToCities < ActiveRecord::Migration
  def self.up
    change_table :cities do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :cities, :avatar
  end
end
