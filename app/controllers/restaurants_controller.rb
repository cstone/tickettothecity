class RestaurantsController < ApplicationController


  # GET /restaurants
  # GET /restaurants.json
  def index
    @search = Restaurant.search(params[:q])
    @restaurants = @search.result(distinct: true)
    #@restaurants = Restaurant.all

    respond_to do |format|
      format.html
      format.json { render json: @restaurants }
    end
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    @restaurant = Restaurant.find(params[:id])
    @areas = @restaurant.areas

    respond_to do |format|
      format.html
      format.json { render json: @restaurant }
    end
  end


end
