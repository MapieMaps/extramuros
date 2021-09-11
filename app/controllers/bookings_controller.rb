class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings.where("date >= ?", Date.today)
                                     .order(date: :asc)
  end

  def create
    @coworking = Coworking.find(params[:coworking_id])
    @booking   = Booking.new(booking_params)
    @booking.coworking = @coworking
    @booking.user = current_user


    if @booking.save
      flash[:notice] = 'le coworking a bien été reservé'
      redirect_to bookings_path
    else
      @date = Date.today
      render 'coworkings/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
