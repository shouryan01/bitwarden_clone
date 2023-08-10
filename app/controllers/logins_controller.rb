class LoginsController < ApplicationController
  before_action :authenticate_user!

  def index
    @logins = current_user.logins
  end
end
