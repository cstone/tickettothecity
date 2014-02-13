class DealsController < ApplicationController
  # GET /deals
  # GET /deals.json
  def index
    @deals = Deal.all

    respond_to do |format|
      format.html { render layout: 'page-with-left-sidebar'}
      format.json { render json: @deals }
    end
  end

  # GET /deals/1
  # GET /deals/1.json
  def show
    @deal = Deal.find(params[:id])

    respond_to do |format|
      format.html { render layout: 'layout-no-sidebar'}
      format.json { render json: @deal }
    end
  end
end
