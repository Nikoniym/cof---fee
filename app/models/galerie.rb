class Galerie < ApplicationRecord
	has_many :photos

  def create_associated_image(image)
    photos.create(avatar: image)
  end


end
