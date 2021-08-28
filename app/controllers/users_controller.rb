class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def profile
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:avatar, :first_name, :last_name, :job_title, :phone_number, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
