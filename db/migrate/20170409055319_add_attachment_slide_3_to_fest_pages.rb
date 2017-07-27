class AddAttachmentSlide3ToFestPages < ActiveRecord::Migration
  def self.up
    change_table :fest_pages do |t|
      t.attachment :slide_3
    end
  end

  def self.down
    remove_attachment :fest_pages, :slide_3
  end
end
