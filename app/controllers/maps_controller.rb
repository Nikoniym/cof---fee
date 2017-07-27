class MapsController < ApplicationController
  def index
  end
  
  def edit
    if current_admin
    @map = Map.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def update

    @map = Map.find(params[:id])

      if  current_admin && @map.update(map_params)
      redirect_to :back 
    else
      render 'edit'
    end
  end

  def new
  @map = Map.new
end

  private 
  def map_params 
    params.require(:map).permit( :avatar, :picture, :title, :name_1, :name_2, :name_3, :type_of_shit, :delete_picture, :delete_avatar)
  end

end
