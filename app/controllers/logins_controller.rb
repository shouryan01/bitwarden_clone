class LoginsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_login, except: [:index, :new, :create]
  before_action :require_editable_permission, only: [:edit, :update]
  before_action :require_deletable_permission, only: [:destroy]

  def index
    @logins = current_user.logins
  end

  def show
  end

  def new
    @login = Login.new
  end

  def create
    @login = Login.new(login_params)
    @login.user_logins.new(user: current_user, role: :owner)
    if @login.save
      redirect_to @login
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @login.update(login_params)
      redirect_to @login
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @login.destroy
    redirect_to logins_path
  end

  private

  def login_params
    params.require(:login).permit(:name, :username, :password)
  end

  def set_login
    @login = current_user.logins.find(params[:id])
  end

  def require_editable_permission
    redirect_to @login unless current_user_login.editable?
  end

  def require_deletable_permission
    redirect_to @login unless current_user_login.deletable?
  end
end
