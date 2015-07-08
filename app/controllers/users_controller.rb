class UsersController < ActionController::Base

  def index
  end

  def show

  end

  def new
  end

  def create
    User.create(user_params)
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :avatar, :password, :password_confirmation, :remember_me, :username)
  end
end
