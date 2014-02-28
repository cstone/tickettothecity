class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @search = Event.search(params[:q])
    @events = @search.result(distinct: true)
    @count = @events.count

    respond_to do |format|
      format.html
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @event }
    end
  end
end
