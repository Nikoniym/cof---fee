class Coffeehouse < ApplicationRecord
	 has_attached_file :avatar, styles: { thumb: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

   has_attached_file :pic, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/

   attr_accessor :delete_avatar
   before_validation { self.avatar.clear if self.delete_avatar == '1' }

   attr_accessor :delete_pic
   before_validation { self.pic.clear if self.delete_pic == '1' }

end
