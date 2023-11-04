class ApplicationController < ActionController::Base
  def current_user_login
    @_current_user_login ||= current_user.user_logins.find_by(login: @login)
  end

  helper_method :current_user_login

  def after_sign_in_path_for(resource)
    logins_path
  end
end
