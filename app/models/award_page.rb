class AwardPage < ApplicationRecord
			  has_attached_file :pic, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/

  attr_accessor :delete_pic
  before_validation { self.pic.clear if self.delete_pic == '1' }
end
