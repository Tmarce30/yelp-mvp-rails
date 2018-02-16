class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
    @categories = ["chinese", "italian", "japanese", "french", "belgian"]
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
