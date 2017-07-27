class AddAttachmentSlide2ToNewsPages < ActiveRecord::Migration
  def self.up
    change_table :news_pages do |t|
      t.attachment :slide_2
    end
  end

  def self.down
    remove_attachment :news_pages, :slide_2
  end
end
