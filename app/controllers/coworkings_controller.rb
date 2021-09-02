class CoworkingsController < ApplicationController
  before_action :find_coworking, only: [:show]
  def index
    if params[:booking_date]
      @date = Date.parse(params[:booking_date])
    else 
      @date = Date.today
    end
    @coworkings = Coworking.all
  end

  def show
    @coworking = Coworking.find(params[:id])
    @booking = Booking.new
    @date = Date.parse(params[:date])
  end

  def coworking_params
    params.require(:coworking).permit(:name, :description, photos: [])
  end

  def find_coworking
    @coworking = Coworking.find(params[:id])
  end
end
