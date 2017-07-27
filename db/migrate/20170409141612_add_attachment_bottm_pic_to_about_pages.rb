class AddAttachmentBottmPicToAboutPages < ActiveRecord::Migration
  def self.up
    change_table :about_pages do |t|
      t.attachment :bottm_pic
    end
  end

  def self.down
    remove_attachment :about_pages, :bottm_pic
  end
end
