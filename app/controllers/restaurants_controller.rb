class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.new(rest_params)
    restaurant.save
    redirect_to restaurants_path
  end

  private

  def rest_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

end
