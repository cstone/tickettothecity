class DealsController < ApplicationController
  # GET /deals
  # GET /deals.json
  def index
    @search = Deal.search(params[:q])
    @deals = @search.result(distinct: true)
    @count = @deals.count

    respond_to do |format|
      format.html
      format.json { render json: @deals }
    end
  end

  # GET /deals/1
  # GET /deals/1.json
  def show
    @deal = Deal.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @deal }
    end
  end
end
