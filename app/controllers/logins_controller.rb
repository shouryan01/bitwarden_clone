class LoginsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_login, except: [:index, :new, :create]
  before_action :require_editor_permissions, only: [:edit, :update]
  before_action :require_owner_permissions, only: [:destroy]

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
    redirect_to root_path
  end

  private

  def login_params
    params.require(:login).permit(:name, :username, :password)
  end

  def set_login
    @login = current_user.logins.find(params[:id])
  end

  def require_editor_permissions
    redirect_to @login unless @login.editable_by?(current_user)
  end

  def require_owner_permissions
    redirect_to @login unless @login.editable_by?(current_user)
  end
end
