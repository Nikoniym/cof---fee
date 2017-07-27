class Photo < ApplicationRecord
	belongs_to :galerie

 	has_attached_file :avatar, styles: { medium: "450x450>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	attr_accessor :delete_avatar
	before_validation { self.avatar.clear if self.delete_avatar == '1' }
end
