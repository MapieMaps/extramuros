class CoworkingsController < ApplicationController
  def index
    @coworkings = Coworking.all
  end

  def show
  end

  def article_params
    params.require(:coworking).permit(photos: [])
  end
end
