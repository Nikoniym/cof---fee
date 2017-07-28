class Partner < ApplicationRecord
  has_attached_file :avatar, styles: { thumb: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  attr_accessor :delete_avatar
  before_validation { self.avatar.clear if self.delete_avatar == '1' }

  serialize :city, Array

  def city_enum
    City.all.map { |c| [ c.city_name ] }
  end


end
