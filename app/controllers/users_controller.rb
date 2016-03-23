class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@current_user)
  end

  def show
    redirect_to root_path unless @current_user
    @user = User.find(params[:id])
  end

  def edit
    redirect_to root_path unless @current_user
    @user = User.find(params[:id])
  end

  def update
    redirect_to root_path unless @current_user
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path(@user)
  end

  def destroy
    redirect_to root_path unless @current_user
    @user = User.find(params[:id])
    @user.destroy
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name, :city, :state)
  end

end
