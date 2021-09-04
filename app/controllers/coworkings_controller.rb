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

    # @date = Date.parse(params[:date])
    if params[:date]
      @date = Date.parse(params[:date])
    else
      @date = Date.today
    end
  end

  def new
    @coworking = Coworking.new
  end

  def create

    @coworking = Coworking.new(coworking_params)

    if @coworking.save # because we need an id
      # This should be out of this method and in a CoworkingEquipmentsController
      equipement_ids = params[:coworking]["equipement_ids"] # ["", "1", "2"]
      equipement_ids = equipement_ids.reject { |value| value.blank? }
      equipement_ids.each do |equipement_id|
        coworking_equipement =
          CoworkingEquipement.new(
            equipement_id: equipement_id,
            coworking: @coworking
          )
        coworking_equipement.save # what to do if errors ?

      end

      redirect_to coworking_path @coworking
    else
      render 'form'
    end
  end

  private

  def coworking_params
    params.require(:coworking).permit(:name, :address, :opening_time, :closing_time, :contact_name, :avatar, photos: [])
  end

  def find_coworking
    @coworking = Coworking.find(params[:id])
  end
end
