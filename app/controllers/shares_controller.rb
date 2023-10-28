class SharesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_login

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
    @login.user_logins.where(user_id: params[:id]).destroy_all
    redirect_to @login
  end

  private

  def set_login
    @login = current_user.logins.find(params[:login_id])
  end

  def user_login_params
    params.require(:user_login).permit(:user_id, :role)
  end
end