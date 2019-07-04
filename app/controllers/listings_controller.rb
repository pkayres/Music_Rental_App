class ListingsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    @listings = Listing.all
    render json: @listings
  end

  def show
    @listing = Listing.find(params[:id])
    render json: @listing
  end

  # def rented
  #   @listing = Listing.find(params[:id])
  #   render json:
  # end

  def create
    @listing = Listing.create(listing_params)
    render json: @listing
  end

  def destroy
    @listing = Listing.find(params[:id])
    render json: @listing.destroy
  end

  private

  def listing_params
    params.require(:listing).permit(:renter,:rented,:description,:price,:image,:instrument_name,:user_notes,:category, :user_id)
  end
end
