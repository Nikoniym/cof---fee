class City < ApplicationRecord
	  has_attached_file :avatar,  default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
    has_attached_file :icon,  default_url: "/images/:style/missing.png"
  validates_attachment_content_type :icon, content_type: /\Aimage\/.*\z/
  geocoded_by :adress

  after_validation :geocode

  has_many :city_faqs

  attr_accessor :delete_icon
  before_validation { self.icon.clear if self.delete_icon == '1' }

  attr_accessor :delete_avatar
  before_validation { self.avatar.clear if self.delete_avatar == '1' }

  #def page_title_seo_enum
    # Partner.all.map { |c| [ c.link, c.id ] }
 # end

end
