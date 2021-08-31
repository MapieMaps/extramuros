class CoworkingsController < ApplicationController
  before_action :find_coworking, only: [:show]
  def index
    @coworkings = Coworking.all
  end

  def show
    @coworking = Coworking.find(params[:id])
    @booking = Booking.new
  end

  def coworking_params
    params.require(:coworking).permit(:name, :description, photos: [])
  end

  def find_coworking
    @coworking = Coworking.find(params[:id])
  end
end
