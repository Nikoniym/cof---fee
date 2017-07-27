class CitiesController < ApplicationController
  def index
  	@cities = City.order(position: :asc)
    @cup = Cup.find_by_id(1)
    @champ = Champ.order(num: :asc)

  end

  def show
  	@city = City.find_by(city_name: params[:id])
  	@faq=@city.city_faqs
    @events_tab = Firsttab.order(position: :asc)
    @sevents =  @events_tab.first.events
 
    end

    def city_render

    	@city = City.find(params[:id])
  	@faq=@city.city_faqs

    	respond_to do |format|
  	    	
        format.js
    end

  def to_param
    self.city_name.parameterize
end

  end
end
