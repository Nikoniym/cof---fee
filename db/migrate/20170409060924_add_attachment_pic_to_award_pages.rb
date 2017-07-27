class AddAttachmentPicToAwardPages < ActiveRecord::Migration
  def self.up
    change_table :award_pages do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :award_pages, :pic
  end
end
