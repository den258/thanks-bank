
class UsersController < ApplicationController

  before_filter :private_load, only: [:show, :edit, :update, :destroy]
  before_filter :private_new, only: [:new, :create]

  def index
    @users = User
      .page(params[:page])
      .per(params[:lines])
  end

  def show
  end

  def new
  end

  def create

    puts '@@@@@@@@@@@@@@'
    puts params
    puts '@@@@@@@@@@@@@@'

    @user.attributes = params[:user]
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def private_load
    @user = User.find(params[:id])
  end

  def private_new
    @user = User.new
  end

end
