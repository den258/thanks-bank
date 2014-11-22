# coding: UTF-8

class Administrator::AdministratorController < ApplicationController

  before_filter :authenticate_administrator

  protected

  def authenticate_administrator
    unless session[:administrator_logged_in]
      redirect_to new_administrator_login_path, alert: "ログインしてください。"
    else
      # update_session_expire
    end
  end

end
