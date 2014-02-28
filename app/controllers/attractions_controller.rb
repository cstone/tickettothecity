class AttractionsController < ApplicationController
  # GET /attractions
  # GET /attractions.json
  def index
    @search = Attraction.search(params[:q])
    @attractions = @search.result(distinct: true)
    @count = @attractions.count

    respond_to do |format|
      format.html
      format.json { render json: @attractions }
    end
  end

  # GET /attractions/1
  # GET /attractions/1.json
  def show
    @attraction = Attraction.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @attraction }
    end
  end


end
