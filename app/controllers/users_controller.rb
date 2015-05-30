class UsersController < ApplicationController
  def show
     @u = User.all
  end

  def delete
    if !params[:user].blank?
      @u= User.find(params[:user])
      @u.delete
      flash[:notice] = "User Data was deleted"
     else
      flash[:notice] = "User Data NOT FOUND"	
    end

    @u = User.all
    render "show"
  end

  def showdetails
    if !params[:id].blank?
     @u= User.find(params[:id])
    end
  end

end
