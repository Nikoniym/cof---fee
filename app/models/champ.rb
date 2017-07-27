class Champ < ApplicationRecord
	has_attached_file :logo, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

  	has_attached_file :pic, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/

  attr_accessor :delete_pic
  before_validation { self.pic.clear if self.delete_pic == '1' }

  attr_accessor :delete_logo
  before_validation { self.logo.clear if self.delete_logo == '1' }
end
