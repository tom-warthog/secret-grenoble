class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(email: params[:user][:email], password_digest: params[:user][:password_digest])
      redirect_to user_path id: @user.id
      end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user = User.create(email: params[:user][:email], password_digest: params[:user][:password_digest])
    redirect_to user_path id: @user.id
  end

  def destroy
    @user = User.find(params[:id])
    puts params
    puts params
    @user.destroy

    redirect_to users_path

  end
end
