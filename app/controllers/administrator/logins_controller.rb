# coding: UTF-8

class Administrator::LoginsController < ApplicationController

  def new
    session[:administrator_logged_in] = nil
  end

  def create
    if params[:password] == '#admin#'
      session[:administrator_logged_in] = true
      redirect_to administrator_users_path, notice: "Logged in."
    else
      flash[:error] = "ユーザー名かパスワードが間違っています"
      render :new
    end
  end

  def destroy
    session[:administrator_logged_in] = nil
    redirect_to administrator_login_path, notice: "Logged out."
  end

end
