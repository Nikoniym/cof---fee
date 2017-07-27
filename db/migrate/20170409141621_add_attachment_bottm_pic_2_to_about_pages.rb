class AddAttachmentBottmPic2ToAboutPages < ActiveRecord::Migration
  def self.up
    change_table :about_pages do |t|
      t.attachment :bottm_pic_2
    end
  end

  def self.down
    remove_attachment :about_pages, :bottm_pic_2
  end
end
