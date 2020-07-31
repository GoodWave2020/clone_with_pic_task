class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def authenticate_user
    if @current_user == nil
      flash[:notice] = t('notice.login_needed')
      redirect_to new_session_path
    end
  end

  def check_user
    if @current_user != @user
      flash[:notice] = t("you can't destroy or edit other user's pictures")
      redirect_to pictures_path
    end
  end
end
