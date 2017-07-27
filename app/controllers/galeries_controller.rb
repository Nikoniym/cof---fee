class GaleriesController < ApplicationController
	def index
		@gal = GaleriePage.find_by_id(1)
		@galeries = Galerie.order(:position).includes(:photos)
		@slider = Photo.includes(:galerie).last(3)
	end

	def show
		@galerie = Galerie.find(params[:id])
		@photos = @galerie.photos
		@slider = @photos.includes(:galerie).last(3)
	end
end
