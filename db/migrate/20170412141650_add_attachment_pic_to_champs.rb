class AddAttachmentPicToChamps < ActiveRecord::Migration
  def self.up
    change_table :champs do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :champs, :pic
  end
end
