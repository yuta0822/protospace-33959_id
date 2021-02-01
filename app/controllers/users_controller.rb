class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototypes = Prototype.find(@user.prototype_ids)
  end
end
