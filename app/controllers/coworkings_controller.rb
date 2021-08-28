class CoworkingsController < ApplicationController
  before_action :find_coworking, only: [:show]
  def index
    @coworkings = Coworking.all
  end

  def show
  end

  private

  def article_params
    params.require(:coworking).permit(photos: [])
  end

  def find_coworking
    @Coworking = Coworking.find(params[:id])
  end
end
