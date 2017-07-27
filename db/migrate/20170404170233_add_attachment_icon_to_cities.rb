class AddAttachmentIconToCities < ActiveRecord::Migration
  def self.up
    change_table :cities do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :cities, :icon
  end
end
