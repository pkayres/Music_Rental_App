class RentsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :destroy]

  def index
    @rents = Rent.all
    render json: @rents
  end

  def show
    @rent = Rent.find(params[:id])
    render json: @rent
  end


  def create
    @listing = Listing.find(params[:listing_id])
    @listing.update(rented: true)

    @rent = Rent.create(user_id: params[:user_id], listing_id: params[:listing_id])
    # @rent = Rent.create(Rent_params[:id])
    render json: @rent
  end

  def destroy
    # byebug
    currentListing = Rent.find(params[:id]).listing_id
    Listing.find(currentListing).update(rented: false)
    Rent.delete(params[:id])
     render json: {success:"was deleted"}
  end

  private

  def Rent_params
    params.require(:Rent).permit(:listing_id,:user_id)
  end
end
