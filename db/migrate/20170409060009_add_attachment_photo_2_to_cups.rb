class AddAttachmentPhoto2ToCups < ActiveRecord::Migration
  def self.up
    change_table :cups do |t|
      t.attachment :photo_2
    end
  end

  def self.down
    remove_attachment :cups, :photo_2
  end
end
