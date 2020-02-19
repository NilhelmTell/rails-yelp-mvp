class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @restaurant = Restaurant.new
  end

  def new

  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_param
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
