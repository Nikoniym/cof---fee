class MainPage < ApplicationRecord

  has_attached_file :slide_1, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :slide_1, content_type: /\Aimage\/.*\z/

  has_attached_file :slide_2, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :slide_2, content_type: /\Aimage\/.*\z/

  has_attached_file :slide_3, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :slide_3, content_type: /\Aimage\/.*\z/

  attr_accessor :delete_slide_1
  before_validation { self.slide_1.clear if self.delete_slide_1 == '1' }

  attr_accessor :delete_slide_2
  before_validation { self.slide_2.clear if self.delete_slide_2 == '1' }

  attr_accessor :delete_slide_3
  before_validation { self.slide_3.clear if self.delete_slide_3 == '1' }
end
