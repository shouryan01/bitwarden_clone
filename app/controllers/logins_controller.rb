class LoginsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_login, except: [:index, :new, :create]

  def index
    @logins = current_user.logins
  end

  def show
  end

  def new
    @login = Login.new
  end

  def create
    @login = current_user.logins.create(login_params)
    if @login.persisted?
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
end
