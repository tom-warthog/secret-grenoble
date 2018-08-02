class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(email: params[:user][:email], password_digest: params[:user][:password_digest])
    log_in(@user)
    flash[:success] = "Bienvenue ma men!"
    redirect_to user_path id: @user.id
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user = User.create(email: params[:user][:email], password_digest: params[:user][:password_digest])
    redirect_to user_path id: user.id
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
end
