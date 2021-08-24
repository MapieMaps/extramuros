class CoworkingsController < ApplicationController
  def index
  end

  def show
  end

  def article_params
    params.require(:coworking).permit(photos: [])
  end
end
