class AddAttachmentPhoto1ToCups < ActiveRecord::Migration
  def self.up
    change_table :cups do |t|
      t.attachment :photo_1
    end
  end

  def self.down
    remove_attachment :cups, :photo_1
  end
end
