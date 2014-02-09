class AttractionsController < ApplicationController
  # GET /attractions
  # GET /attractions.json
  def index
    @attractions = Attraction.all

    respond_to do |format|
      format.html { render layout: 'page-with-left-sidebar'}
      format.json { render json: @attractions }
    end
  end

  # GET /attractions/1
  # GET /attractions/1.json
  def show
    @attraction = Attraction.find(params[:id])

    respond_to do |format|
      format.html { render layout: 'layout-no-sidebar'}
      format.json { render json: @attraction }
    end
  end


end
