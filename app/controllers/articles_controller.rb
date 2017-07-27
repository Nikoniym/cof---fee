class ArticlesController < ApplicationController
  def index
   
  	@articles = Article.order(position: :asc).where(show_on_main: true)
  	@firstslide = MainPage.find_by_id(1)
  end
   def show
   	@article = Article.find(params[:id])
   end

   def news
   		@articles = Article.order(position: :asc)
      @firstslide = NewsPage.find_by_id(1)
   end
end
