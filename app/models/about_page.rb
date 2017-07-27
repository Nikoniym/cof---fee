class AboutPage < ApplicationRecord
	has_attached_file :logo, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

  has_attached_file :logo_2, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo_2, content_type: /\Aimage\/.*\z/

  has_attached_file :side_pic, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :side_pic, content_type: /\Aimage\/.*\z/

  has_attached_file :side_pic_2, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :side_pic_2, content_type: /\Aimage\/.*\z/

  has_attached_file :bottm_pic, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :bottm_pic, content_type: /\Aimage\/.*\z/

  has_attached_file :bottm_pic_2, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :bottm_pic_2, content_type: /\Aimage\/.*\z/

  has_attached_file :bottm_pic_3, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :bottm_pic_3, content_type: /\Aimage\/.*\z/

  attr_accessor :delete_logo_2
  before_validation { self.logo_2.clear if self.delete_logo_2 == '1' }

  attr_accessor :delete_logo
  before_validation { self.logo.clear if self.delete_logo == '1' }

  attr_accessor :delete_side_pic
  before_validation { self.side_pic.clear if self.delete_side_pic == '1' }

  attr_accessor :delete_side_pic_2
  before_validation { self.side_pic_2.clear if self.delete_side_pic_2 == '1' }

  attr_accessor :delete_bottm_pic
  before_validation { self.bottm_pic.clear if self.delete_bottm_pic == '1' }

  attr_accessor :delete_bottm_pic_2
  before_validation { self.bottm_pic_2.clear if self.delete_bottm_pic_2 == '1' }

  attr_accessor :delete_bottm_pic_3
  before_validation { self.bottm_pic_3.clear if self.delete_bottm_pic_3 == '1' }


end
