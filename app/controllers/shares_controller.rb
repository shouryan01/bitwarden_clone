class SharesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_login
  before_action :require_shareable_permission

  def new
    @user_login = UserLogin.new
  end

  def create
    @user_login = @login.user_logins.new(user_login_params)
    if @user_login.save
      redirect_to @login
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    user_login = @login.user_logins.find_by(user_id: params[:id])
    user_login.destroy
    if current_user.id == user_login.user_id
      redirect_to logins_path
    else
      redirect_to @login
    end
  end

  private

  def set_login
    @login = current_user.logins.find(params[:login_id])
  end

  def user_login_params
    params.require(:user_login).permit(:user_id, :role)
  end

  def require_shareable_permission
    redirect_to @login unless current_user_login.shareable?
  end
end