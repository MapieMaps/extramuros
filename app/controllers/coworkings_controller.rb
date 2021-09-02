class CoworkingsController < ApplicationController
  before_action :find_coworking, only: [:show]
  def index
    @coworkings = Coworking.all
  end

  def show

  end

  def new
    @coworking = Coworking.new
  end

  def create
    @coworking = Coworking.new(coworking_params)
  end

  private

  def coworking_params
    params.require(:coworking).permit(:name, :address, :equipements, :contact_first_name, :contact_last_name, :contact_email, :avatar, :photos)
  end

  def find_coworking
    @coworking = Coworking.find(params[:id])
  end
end

