class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(email: params[:email], password_digest: params[:password_digest])
    redirect_to user_path id: @user.id
      end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
