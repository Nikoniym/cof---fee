class AddAttachmentLogoToAboutPages < ActiveRecord::Migration
  def self.up
    change_table :about_pages do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :about_pages, :logo
  end
end
