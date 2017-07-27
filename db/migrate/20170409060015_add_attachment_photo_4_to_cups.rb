class AddAttachmentPhoto4ToCups < ActiveRecord::Migration
  def self.up
    change_table :cups do |t|
      t.attachment :photo_4
    end
  end

  def self.down
    remove_attachment :cups, :photo_4
  end
end
