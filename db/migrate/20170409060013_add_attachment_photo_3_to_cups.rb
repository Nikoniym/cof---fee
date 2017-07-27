class AddAttachmentPhoto3ToCups < ActiveRecord::Migration
  def self.up
    change_table :cups do |t|
      t.attachment :photo_3
    end
  end

  def self.down
    remove_attachment :cups, :photo_3
  end
end
