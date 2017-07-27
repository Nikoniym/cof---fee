class AddAttachmentAvatarToWinners < ActiveRecord::Migration
  def self.up
    change_table :winners do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :winners, :avatar
  end
end
