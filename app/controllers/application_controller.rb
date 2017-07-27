class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :set_partners
  before_action :set_sub


def set_partners
	if controller_name == 'festivals'
	  @partners = Partner.order(fest_num: :asc).where(fest_page: true)
		@banners = Banner.order(:position).where(fest_page: true).limit(3)
	elsif controller_name ==  'articles'  && action_name == 'index'
	  @partners = Partner.order(num: :asc).where(main_page: true)
		@banners = Banner.order(:position).where(main_page: true).limit(3)
	elsif controller_name ==  'awards'
		@banners = Banner.order(:position).where(award_page: true).limit(3)
	  @partners = Partner.order(award_num: :asc).where(award_page: true)
	elsif controller_name ==  'cities'  && action_name == 'show'
		cities_p = City.find_by(city_name: params[:id]).id
		@partners = Partner.order(city_num: :asc).where(["city LIKE ?", "%#{cities_p}%"])
	elsif controller_name ==  'cities'
		@banners = Banner.order(:position).where(cup_page: true).limit(3)
	elsif controller_name ==  'galeries'
		@banners = Banner.order(:position).where(gallery_page: true).limit(3)
	elsif controller_name ==  'contacts'
		@banners = Banner.order(:position).where(contact_page: true).limit(3)
	elsif controller_name ==  'organizators'
		@banners = Banner.order(:position).where(organizers_page: true).limit(3)
	elsif controller_name ==  'articles'  && (action_name == 'show' || action_name == 'news')
		@banners = Banner.order(:position).where(news_page: true).limit(3)
	end
	@links = Link.first
end

def set_sub
	  @sub = Subscription.new
end

def create
    @sub = Subscription.new(sub_params)
    @sub.save
    	SubMailer.sub(@sub).deliver_now
    	 redirect_to :back
end

private
	def sub_params
		 params.require(:subscription).permit(:email) 
	end


end
