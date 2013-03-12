class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(params[:user])

    # if @user.save
    #   session[:user_id] @user.user_id
    #   redirect_to @user
    # else
    #   render action: "new"
    # end
  end
end