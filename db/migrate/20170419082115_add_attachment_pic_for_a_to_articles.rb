class AddAttachmentPicForAToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :pic_for_a
    end
  end

  def self.down
    remove_attachment :articles, :pic_for_a
  end
end
