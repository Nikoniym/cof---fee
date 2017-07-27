class Cup < ApplicationRecord
			  has_attached_file :photo_1, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo_1, content_type: /\Aimage\/.*\z/

  	  has_attached_file :photo_2, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo_2, content_type: /\Aimage\/.*\z/

  	  has_attached_file :photo_3, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo_3, content_type: /\Aimage\/.*\z/

  	  has_attached_file :photo_4, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo_4, content_type: /\Aimage\/.*\z/

    	  has_attached_file :shop_logo, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :shop_logo, content_type: /\Aimage\/.*\z/

    	  has_attached_file :shop_pic, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :shop_pic, content_type: /\Aimage\/.*\z/

    	  has_attached_file :shop_pic_2, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :shop_pic_2, content_type: /\Aimage\/.*\z/

  attr_accessor :delete_photo_1
  before_validation { self.photo_1.clear if self.delete_photo_1 == '1' }

  attr_accessor :delete_photo_2
  before_validation { self.photo_2.clear if self.delete_photo_2 == '1' }

  attr_accessor :delete_photo_3
  before_validation { self.photo_3.clear if self.delete_photo_3 == '1' }

  attr_accessor :delete_photo_4
  before_validation { self.photo_4.clear if self.delete_photo_4 == '1' }

  attr_accessor :delete_shop_logo
  before_validation { self.shop_logo.clear if self.delete_shop_logo == '1' }

  attr_accessor :delete_shop_pic
  before_validation { self.shop_pic.clear if self.delete_shop_pic == '1' }

  attr_accessor :delete_shop_pic_2
  before_validation { self.shop_pic_2.clear if self.delete_shop_pic_2 == '1' }

end
