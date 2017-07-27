class AddAttachmentAvatarToCoffeehouses < ActiveRecord::Migration
  def self.up
    change_table :coffeehouses do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :coffeehouses, :avatar
  end
end
