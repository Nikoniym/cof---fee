class AddAttachmentLogoToChamps < ActiveRecord::Migration
  def self.up
    change_table :champs do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :champs, :logo
  end
end
