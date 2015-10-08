class UsersController < ApplicationController
  def new

  end

  def create
    user = User.new
    user.username = params[:username]
    user.email = params[:email]
    user.save

    redirect_to "/users/#{user.id}"
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.username = params[:username]
    user.email = params[:email]
    user.save

    redirect_to "/users/#{user.id}"
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    redirect_to "/users"
  end
end




