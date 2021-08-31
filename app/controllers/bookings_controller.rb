class BookingsController < ApplicationController

  def index
  end

  def new
  end

  def create
    @coworking = coworking.find(params[:coworking_id])
    @booking   = Booking.new(booking_params)
    @booking.coworking = @coworking
    #@booking.team = current_user
      if @booking.save
         redirect_to coworking_path @coworking
      else
        render 'coworking/show'
      end
  end



  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
