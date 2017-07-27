class AddAttachmentLogo2ToAboutPages < ActiveRecord::Migration
  def self.up
    change_table :about_pages do |t|
      t.attachment :logo_2
    end
  end

  def self.down
    remove_attachment :about_pages, :logo_2
  end
end
