class SpecialOffersController < Integral::ApplicationController
  before_action :set_special_offer, only: [:show]

  # GET /special_offers
  def index
    @special_offers = SpecialOffer.all
  end

  # GET /special_offers/1
  def show
  end

  private

  def set_special_offer
    @special_offer = SpecialOffer.find(params[:id])
  end
end
