class Banner < ApplicationRecord
  has_attached_file :image_vertical, styles: { thumb: "200x400#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_vertical, content_type: /\Aimage\/.*\z/

  attr_accessor :delete_image_vertical
  before_validation { self.image_vertical.clear if self.delete_image_vertical == '1' }

  has_attached_file :image_horizontal, styles: { thumb: "200x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_horizontal, content_type: /\Aimage\/.*\z/

  attr_accessor :delete_image_horizontal
  before_validation { self.image_horizontal.clear if self.delete_image_horizontal == '1' }

  has_attached_file :image_square, styles: {  thumb: "200x200#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_square, content_type: /\Aimage\/.*\z/

  attr_accessor :delete_image_square
  before_validation { self.image_square.clear if self.delete_image_square == '1' }
end
