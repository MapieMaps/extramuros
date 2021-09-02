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

  def new
    @coworking = Coworking.new
  end

  def create
    @coworking = Coworking.new(coworking_params)
  end

  private

  def coworking_params
    params.require(:coworking).permit(:name, :address, :equipements, :opening_time, :closing_time, :contact_name, :avatar, photos: [])

  end

  def find_coworking
    @coworking = Coworking.find(params[:id])
  end
end
