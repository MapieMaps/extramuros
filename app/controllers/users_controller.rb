class UsersController < ApplicationController
  def index
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:avatar)
  end
end