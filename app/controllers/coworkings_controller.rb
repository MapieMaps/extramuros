class CoworkingsController < ApplicationController
  def index
  end

  def show
    @coworking = Coworking.find(params[:id])
    @booking = Booking.new
  end

  def coworking_params
    params.require(:coworking).permit(:name, :description, photos: [])
  end
end
