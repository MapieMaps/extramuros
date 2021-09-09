class BookingsController < ApplicationController

  def index
    @bookings = Current_user.booking
  end



  def create
    @coworking = Coworking.find(params[:coworking_id])
    @booking   = Booking.new(booking_params)
    @booking.coworking = @coworking
    @booking.user = current_user

    #@booking.team = current_user
      if @booking.save!
        flash[:notice] = 'le coworking a bien été reservé'
         redirect_to coworking_path @coworking
      else
        @date = Date.today
        render 'coworkings/show'
      end
  end



  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
