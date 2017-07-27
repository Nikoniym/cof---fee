class AddAttachmentSlide1ToNewsPages < ActiveRecord::Migration
  def self.up
    change_table :news_pages do |t|
      t.attachment :slide_1
    end
  end

  def self.down
    remove_attachment :news_pages, :slide_1
  end
end
