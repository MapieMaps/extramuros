class UsersController < ApplicationController
  def index
  end

  def profile
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:avatar)
  end
end
