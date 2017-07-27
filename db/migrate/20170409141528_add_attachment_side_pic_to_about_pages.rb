class AddAttachmentSidePicToAboutPages < ActiveRecord::Migration
  def self.up
    change_table :about_pages do |t|
      t.attachment :side_pic
    end
  end

  def self.down
    remove_attachment :about_pages, :side_pic
  end
end
