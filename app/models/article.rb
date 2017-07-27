class Article < ApplicationRecord
	has_attached_file :avatar, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_attached_file :pic_for_a, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic_for_a, content_type: /\Aimage\/.*\z/

  attr_accessor :delete_avatar
  before_validation { self.avatar.clear if self.delete_avatar == '1' }

  attr_accessor :delete_pic_for_a
  before_validation { self.pic_for_a.clear if self.delete_pic_for_a == '1' }
end
