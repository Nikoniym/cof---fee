class AddAttachmentPicToCoffeehouses < ActiveRecord::Migration
  def self.up
    change_table :coffeehouses do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :coffeehouses, :pic
  end
end
