class AddAttachmentSlide3ToMainPages < ActiveRecord::Migration
  def self.up
    change_table :main_pages do |t|
      t.attachment :slide_3
    end
  end

  def self.down
    remove_attachment :main_pages, :slide_3
  end
end
