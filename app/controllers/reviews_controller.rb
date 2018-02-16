class ReviewsController < ApplicationController

  before_action :set_restaurant, only: [:new, :create]

  def new
    @review = Review.new
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
