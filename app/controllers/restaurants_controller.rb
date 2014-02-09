class RestaurantsController < ApplicationController


  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.all

    respond_to do |format|
      format.html { render layout: 'page-with-left-sidebar'}
      format.json { render json: @restaurants }
    end
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    @restaurant = Restaurant.find(params[:id])
    @areas = @restaurant.areas

    respond_to do |format|
      format.html { render layout: 'layout-no-sidebar'}
      format.json { render json: @restaurant }
    end
  end


end
