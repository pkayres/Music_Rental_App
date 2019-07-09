class RatingsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    @ratings = Rating.all
    render json: @ratings
  end

  def create

    @rating = Rating.create(rating_params)
    render json: @rating
  end

  def show
    @rating = Rating.find(params[:id])
    render json: @rating
  end


  private

  def rating_params
    params.require(:rating).permit(:rated_id, :rater_id, :stars, :review)
  end
end
