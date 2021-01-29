class PrototypesController < ApplicationController

  def index
    @prototype = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.create(prototype_params)
    if @prototype.save
       redirect_to root_path
    else
      render :new
    end
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :image, :catch_copy, :concept).merge(user_id: current_user.id)
  end

end
  